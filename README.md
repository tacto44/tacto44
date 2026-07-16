
curl https://mirror.cachyos.org/cachyos-repo.tar.xz -o cachyos-repo.tar.xz

tar xvf cachyos-repo.tar.xz

cd cachyos-repo

sudo ./cachyos-repo.sh

manually remove the package folders at end of update if needed

pacman -Qqn | sudo pacman -S --needed -

sudo pacman -Scc

sudo pacman -Sy

sudo pacman -S linux-cachyos linux-cachyos-headers chwd sdboot-manage cachyos-hooks


sudo chwd -a

sudo sdboot-manage gen

Double check sudo nano /boot/loader/loader.conf for default linux-cachyos.conf

reboot

sudo pacman -R linux

sudo sdboot-manage gen


sudo pacman -S plasma-meta plasma-login-manager konsole dolphin kate vlc vlc-plugins-all steam libheif ark gwenview akregator unrar partitionmanager inter-font qbittorrent base-devel git flatpak cachyos-hello cachyos-rate-mirrors cachyos-kernel-manager shelly fish firefox cachyos-firefox-settings openssh fuse2 cachyos-packageinstaller power-profiles-daemon cachyos-settings protonup-qt qemu-full virt-manager virt-viewer edk2-ovmf dnsmasq swtpm libvirt guestfs-tools libosinfo tuned




chsh -s /usr/bin/fish

install yay

yay --devel --save

sudo systemctl enable plasmalogin

sudo systemctl enable --now libvirtd.service

sudo usermod -aG libvirt $USER

reboot into plasma

balooctl6 disable
balooctl6 purge

sudo sed -i '/^OPTIONS=/s/\bdebug\b/!debug/' /etc/makepkg.conf

sudo sed -i -E 's/^#?(DefaultTimeout(Start|Stop)Sec)=.*/\1=5s/' /etc/systemd/system.conf

sudo sed -i -E 's/^#?(DefaultTimeout(Start|Stop)Sec)=.*/\1=5s/' /etc/systemd/user.conf



cachyos hello, remember not to enable browser profiles in ram, change the others

systemctl --user edit --full arch-update.timer


log into firefox, sites etc

fish_config

install aur packages, nord gui bin, kei, rounded corners git, karousel plasma6-applets-kvitals-git


sudo usermod -aG nordvpn $USER

sudo systemctl enable --now nordvpnd.service

make all system changes, import shortcuts, change konsole, change font etc
