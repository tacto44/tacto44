#!/usr/bin/env bash
set -euo pipefail

# Visual feedback functions
info() { echo -e "\e[34m[INFO]\e[0m $1"; }
success() { echo -e "\e[32m[SUCCESS]\e[0m $1"; }

# Check for root privilege
if [[ $EUID -ne 0 ]]; then
   echo -e "\e[31m[ERROR]\e[0m This script must be run as root (e.g., using sudo)."
   exit 1
fi

info "Updating system packages and repository databases..."
pacman -Syu --noconfirm

# Package Definitions
PACKAGES=(
    # Plasma Desktop Core & Services
    plasma-desktop
    plasma-login-manager
    plasma-nm
    plasma-pa
    kde-gtk-config
    
    # KDE Applications & Utilities
    dolphin
    konsole
    kate
    ark
    partitionmanager
    
    # Fonts & Archiving
    inter-font
    unzip
    unrar
    libheif
    
    # Media & Browsing
    vlc
    qbittorrent
    
   
    # System, Networking & Gaming
    yay
    flatpak
    steam
    openssh
    mullvad-vpn
    shelly
    
    # Power Management
    tuned-cachy
    tuned-cachy-ppd
)

info "Installing specified CachyOS packages..."
pacman -S --needed --noconfirm "${PACKAGES[@]}"

info "Applying system configuration tweaks..."
# Shorten systemd stop timeout for faster reboots/shutdowns
sed -i 's/^#\?DefaultTimeoutStopSec=.*/DefaultTimeoutStopSec=5s/' /etc/systemd/system.conf
sed -i 's/^#\?DefaultTimeoutStopSec=.*/DefaultTimeoutStopSec=5s/' /etc/systemd/user.conf

# Limit systemd journal log size to 200MB
sed -i 's/^#\?SystemMaxUse=.*/SystemMaxUse=200M/' /etc/systemd/journald.conf

# Configure kernel parameters in /etc/default/limine (inserted between splash and rw)
info "Updating Limine kernel parameters..."
if [[ -f /etc/default/limine ]]; then
    if grep -q "acpi_backlight=native" /etc/default/limine; then
        info "Kernel parameters already present in /etc/default/limine, skipping..."
    else
        sed -i 's/\(splash\)\([[:space:]]\+\)\(rw\)/\1 acpi_backlight=native amdgpu.backlight=0 \3/' /etc/default/limine
        info "Limine default configuration updated."
    fi
    
    if command -v limine-update &>/dev/null; then
        limine-update
    fi
else
    info "/etc/default/limine not found; creating with kernel parameters..."
    echo 'KERNEL_CMDLINE="quiet splash acpi_backlight=native amdgpu.backlight=0 rw"' >> /etc/default/limine
fi

info "Enabling systemd services..."
# Display Manager
systemctl enable plasmalogin.service

# Network Daemon
systemctl enable --now mullvad-daemon.service

success "Post-installation script completed successfully!"
info "You can now reboot your system to launch into Plasma."
