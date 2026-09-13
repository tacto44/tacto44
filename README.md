sudo dnf install ptyxis nautilus gnome-shell gdm gnome-control-center gnome-software snapd qbittorrent firefox loupe gnome-shell-extensions gnome-extensions-app gnome-text-editor file-roller gnome-system-monitor tuned-ppd Celluloid

sudo systemctl enable gdm.service

sudo systemctl set-default graphical.target

sudo systemctl enable --now snapd.socket

sudo reboot

sudo dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

sudo dnf install steam akmod-nvidia

sudo snap install nordvpn curseforge
