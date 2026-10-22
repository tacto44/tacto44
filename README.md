sudo pacman -S plasma-desktop plasma-login-manager plasma-nm plasma-pa yay qbittorrent vlc dolphin konsole steam kate kde-gtk-config downgrade inter-font ark unrar flatpak partitionmanager brave-origin-bin



sudo systemctl enable plasmalogin.service

sudo reboot

 sudo nano /boot/limine.conf
add the acpi into the cmdline

 cmdline: quiet nowatchdog splash acpi_backlight=native amdgpu.backlight=0 rw rootflags

 yay -S snapd
sudo systemctl enable --now snapd.socket
sudo snap install curseforge nordvpn
yay --devel --save

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo >> /home/mc/.bashrc
echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv bash)"' >> /home/mc/.bashrc
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv bash)"
brew install rhoopr/kei/kei
kei setup config

sudo groupadd nordvpn
sudo usermod -aG nordvpn $USER
