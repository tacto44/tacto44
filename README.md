sudo pacman -S plasma-desktop plasma-login-manager plasma-nm plasma-pa yay qbittorrent vlc dolphin konsole steam kate kde-gtk-config downgrade inter-font ark unrar flatpak partitionmanager brave-origin-bin tuned tuned-ppd libheif

sudo systemctl enable --now tuned-ppd

sudo tuned-adm profile latency-performance


sudo systemctl enable plasmalogin.service

sudo reboot

change settings like login and lock

do window rules and shortcut imports

change font to inter

sudo sed -i 's/^#\?DefaultTimeoutStopSec=.*/DefaultTimeoutStopSec=5s/' /etc/systemd/system.conf

sudo sed -i 's/^#\?DefaultTimeoutStopSec=.*/DefaultTimeoutStopSec=5s/' /etc/systemd/user.conf

sudo nano /etc/default/limine


add the acpi into the cmdline

acpi_backlight=native amdgpu.backlight=0 

sudo limine-update

sudo sed -i 's/^#\?SystemMaxUse=.*/SystemMaxUse=200M/' /etc/systemd/journald.conf


sudo sed -i -E 's/^#?(DefaultTimeout(Start|Stop)Sec)=.*/\1=5s/' /etc/systemd/system.conf

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
