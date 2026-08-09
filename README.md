
curl https://mirror.cachyos.org/cachyos-repo.tar.xz -o cachyos-repo.tar.xz

tar xvf cachyos-repo.tar.xz

cd cachyos-repo

sudo ./cachyos-repo.sh

manually remove the package folders at end of update if needed

pacman -Qqn | sudo pacman -S --needed -

sudo pacman -Scc


sudo pacman -S linux-cachyos linux-cachyos-headers chwd systemd-boot-manager cachyos-hooks


sudo chwd -a

sudo sdboot-manage gen

reboot

sudo pacman -R linux

sudo sdboot-manage gen


sudo pacman -S plasma-meta plasma-login-manager konsole dolphin kate vlc vlc-plugins-all steam libheif ark gwenview akregator unrar partitionmanager inter-font qbittorrent base-devel git flatpak cachyos-hello cachyos-rate-mirrors cachyos-kernel-manager shelly fish firefox cachyos-firefox-settings openssh fuse2 cachyos-packageinstaller power-profiles-daemon cachyos-settings yay


sudo sed -i '/^OPTIONS=/s/\bdebug\b/!debug/' /etc/makepkg.conf

sudo nano /etc/systemd/system.conf

Find these two lines (they are usually commented out with a `#`):
   ```ini
   #DefaultTimeoutStartSec=90s
   #DefaultTimeoutStopSec=90s

   Change them to 5s

   Tghen do the same thing for

   sudo nano /etc/systemd/user.conf
sudo systemctl daemon-reload
systemctl --user daemon-reload


   sudo nano /etc/systemd/journald.conf

   Find and uncomment the `SystemMaxUse` line, then set its limit:
   ```ini
SystemMaxUse=200M

Change to 200mb

chsh -s /usr/bin/fish

yay --devel --save

sudo systemctl enable plasmalogin

sudo systemctl enable --now libvirtd.service

sudo usermod -aG libvirt $USER

reboot into plasma

balooctl6 disable
balooctl6 purge


sudo sed -i -E 's/^#?(DefaultTimeout(Start|Stop)Sec)=.*/\1=5s/' /etc/systemd/system.conf

sudo sed -i -E 's/^#?(DefaultTimeout(Start|Stop)Sec)=.*/\1=5s/' /etc/systemd/user.conf



cachyos hello, remember not to enable browser profiles in ram, change the others

systemctl --user edit --full arch-update.timer

sudo ln -sf /dev/null /etc/xdg/autostart/org.kde.discover.notifier.desktop


log into firefox, sites etc

install aur packages, nord gui bin, kei, rounded corners git, karousel plasma6-applets-kvitals-git


sudo usermod -aG nordvpn $USER

sudo systemctl enable --now nordvpnd.service

make all system changes, import shortcuts, change konsole, change font etc
