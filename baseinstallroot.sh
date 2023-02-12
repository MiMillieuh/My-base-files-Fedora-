
echo 'fastestmirror=1' >> /etc/dnf/dnf.conf
echo 'max_parallel_downloads=10' >> /etc/dnf/dnf.conf

sudo dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm -y


sudo dnf update -y && sudo dnf groupupdate multimedia --setop="install_weak_deps=False" --exclude=PackageKit-gstreamer-plugin -y


#sudo dnf install akmod-nvidia -y # rhel/centos users can use kmod-nvidia instead
#sudo dnf install xorg-x11-drv-nvidia-cuda -y #optional for cuda/nvdec/nvenc support

sudo dnf config-manager --add-repo https://dl.winehq.org/wine-builds/fedora/36/winehq.repo -y

sudo dnf install winehq-devel -y

sudo dnf install gnome-console -y

sudo dnf install dconf-editor -y

sudo dnf gnome-tweak-tool -y

sudo dnf install mesa-libGLU -y

sudo dnf install winehq-devel lutris gnome-shell-extension-dash-to-dock gnome-shell-extension-appindicator gnome-shell-extension-caffeine gnome-shell-extension-gsconnect gnome-shell-extension-user-theme git steam python3-devel python3-pip npm java-17-openjdk java-17-openjdk-devel java-1.8.0-openjdk java-1.8.0-openjdk-devel nextcloud-client cargo -y

sudo dnf remove rhythmbox yelp gnome-boxes gnome-tour gnome-connections simple-scan gnome-maps cheese gnome-contacts gnome-terminal libreoffice-* -y

sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'

dnf check-update
sudo dnf install code -y

sudo dnf config-manager --add-repo=https://negativo17.org/repos/fedora-nvidia.repo -y
sudo dnf install nvidia-driver nvidia-driver-libs nvidia-libXNVCtrl nvidia-driver-cuda nvidia-driver-cuda-libs nvidia-driver-NVML nvidia-persistenced nvidia-driver-NvFBCOpenGL nvidia-settings akmod-nvidia -y


flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak remote-add --if-not-exists gnome-nightly https://nightly.gnome.org/gnome-nightly.flatpakrepo
flatpak install com.rtosta.zapzap org.filezillaproject.Filezilla net.cozic.joplin_desktop net.davidotek.pupgui2 com.mastermindzh.tidal-hifi com.discordapp.Discord org.onlyoffice.desktopeditors com.google.Chrome com.mattjakeman.ExtensionManager de.haeckerfelix.Fragments


#https://copr.fedorainfracloud.org/coprs/polter/bumblebee/
