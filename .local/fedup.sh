# Basic Fedora Setup
sudo dnf -y update
sudo rpm -Uvh http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
sudo rpm -Uvh http://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
sudo rpm -Uvh https://www.folkswithhats.org/repo/$(rpm -E %fedora)/RPMS/noarch/folkswithhats-release-2.0.0-0.fc$(rpm -E %fedora).noarch.rpm
sudo dnf group install "C Development Tools and Libraries"
sudo dnf -y install fedy
sudo dnf -y install tlp tlp-rdw
sudo systemctl enable tlp
sudo dnf -y install steam
sudo dnf -y install vlc
sudo dnf -y install dropbox nautilus-dropbox
sudo dnf -y install nano vim rpm-build
sudo dnf -y install postgresql-server postgresql-contrib
sudo systemctl enable postgresql
sudo postgresql-setup --initdb --unit postgresql
sudo dnf -y install phpPgAdmin pgadmin3
# opera screen terminator youtube-dl ranger mc npm
# ruby install
cd ~
wget -O ruby-install-0.6.1.tar.gz https://github.com/postmodern/ruby-install/archive/v0.6.1.tar.gz
tar -xzvf ruby-install-0.6.1.tar.gz
cd ruby-install-0.6.1/
sudo make install

# check to see if it isntalled successfully
ruby-install -v

# install ruby
ruby-install --system --latest ruby
ruby-install jruby

# zsh Setup
cd ~
curl https://raw.githubusercontent.com/scopatz/nanorc/master/install.sh | sh
wget https://raw.githubusercontent.com/Gazaunga/i3/master/.zshrc
mkdir zsh
cd zsh
wget https://raw.githubusercontent.com/Gazaunga/i3/master/zsh/minimal.zsh

# git Setup
git config --global user.name "Gazaunga"
git config --global user.email "jeremy.ottley@gmail.com"
git config --global core.autocrlf input
git config --global core.safecrlf true

# Font Setup
cd ~
mkdir .fonts
cd .fonts
wget http://int10h.org/oldschool-pc-fonts/download/ultimate_oldschool_pc_font_pack_v1.0.zip
unzip ultimate_oldschool_pc_font_pack_v1.0.zip
git clone https://github.com/tonsky/FiraCode.git
git clone https://github.com/sunaku/tamzen-font.git
git clone https://github.com/FortAwesome/Font-Awesome.git
git clone https://github.com/adobe-fonts/source-code-pro.git
cd source-code-pro
sh build.sh
sudo fc-cache -v

# SpaceVim
cd ~
curl -sLf https://spacevim.org/install.sh | bash

# Set some good defaults for GNOME applications without
# resorting to gnome-settings-daemon and other deps.

## THESE NEED TO BE TRANSLATED TO "GSETTINGS" COMMANDS##
# stop opening each dir in its own window
#gconftool-2 --type boolean --set /apps/nautilus/preferences/always_use_browser true

# details view
#gconftool-2 --type string --set /apps/nautilus/preferences/default_folder_viewer list_view

# desktop points to ~
#gconftool-2 --type boolean --set /apps/nautilus/preferences/desktop_is_home_dir true

# allow bypassing of trash bin
#gconftool-2 --type boolean --set /apps/nautilus/preferences/enable_delete true

# disable the nautilus desktop
#gconftool-2 --type boolean --set /apps/nautilus/preferences/show_desktop false

# open URLs in app defined by x-www-browser and not GNOME Preferred Applications
#gconftool-2 --type string --set /desktop/gnome/url-handlers/http/command "x-www-browser %s"


# flatpak
#sudo dnf install -y flatpak flatpak-libs
#sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# Firefox addons:
# Hide Titlebar Plus
# GNOME Theme
# HTTPS Everywhere
# gTranslate
# Self Destructing Cookies
# uBlock Origin
# Privacy Badger

# Gnome Extensions
# OpenWeather
# TopIcons Plus
# Axe Menu
# Extend Panel Menu
# Dash to Panel
