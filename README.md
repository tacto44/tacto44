sudo pacman -S mesa vulkan-radeon nvidia-open-dkms nvidia-utils linux-zen-headers libheif firefox qbittorrent unrar plasma-meta plasma-login-manager vlc vlc-plugins-all steam inter-font konsole dolphin kate flatpak go cmake git base-devel fuse2 openssh


sudo systemctl enable plasmalogin

reboot

make changes to settings, konsole etc

git clone https://aur.archlinux.org/yay.git

sudo sed -i '/^OPTIONS=/s/\bdebug\b/!debug/' /etc/makepkg.conf

sudo sed -i -E 's/^#?(DefaultTimeout(Start|Stop)Sec)=.*/\1=5s/' /etc/systemd/system.conf

sudo sed -i -E 's/^#?(DefaultTimeout(Start|Stop)Sec)=.*/\1=5s/' /etc/systemd/user.conf

balooctl6 disable
balooctl6 purge

yay --devel --save

yay -S arch-update kwin-effect-rounded-corners-git kwin-scripts-karousel-git nordvpn-gui-bin


arch-update --tray --enable

sudo usermod -aG nordvpn $USER

sudo systemctl enable --now nordvpnd

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo >> /home/mc/.bashrc

echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv bash)"' >> /home/mc/.bashrc

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv bash)"

brew install rhoopr/kei/kei

kei config setup

import shortcuts rules etc
