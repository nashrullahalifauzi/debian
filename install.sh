 #!/bin/bash

# Default packages are for the configuration and corresponding .config folders
# Install packages after installing base Debian with no GUI

# xorg display server installation
apt install -y xorg xbacklight xbindkeys xvkbd xinput

# PACKAGE INCLUDES build-essential.
apt install -y build-essential

# Microcode for Intel/AMD 
# sudo apt install -y amd64-microcode
apt install -y intel-microcode 

# Network File Tools/System Events
apt install -y dialog mtools dosfstools avahi-daemon acpi acpid gvfs-backends

systemctl enable avahi-daemon
systemctl enable acpid

# File Manager (eg. pcmanfm,krusader,thunar)
apt install -y pcmanfm

# Terminal (eg. terminator,kitty,xfce4-terminal)
apt install -y terminator

# Sound packages
apt install -y pulseaudio alsa-utils pavucontrol volumeicon-alsa

# Neofetch/HTOP
apt install -y neofetch htop

# Network Manager
apt install -y network-manager network-manager-gnome 

# Installation for Appearance management
apt install -y lxappearance 

# Browser Installation (eg. chromium)
apt install -y firefox-esr 

# Desktop background browser/handler 
# feh --bg-fill /path/to/directory 
# sudo apt install -y nitrogen 
apt install -y feh
 
# Fonts and icons for now
apt install -y fonts-firacode fonts-liberation2 fonts-ubuntu papirus-icon-theme fonts-cascadia-code

# Openbox packages
apt install -y openbox dunst dbus-x11 hsetroot i3lock libnotify-bin lximage-qt menu picom  qt5-style-plugins rofi scrot tint2 xfce4-power-manager 

# LXDM login manager
apt install -y lxdm
systemctl enable lxdm

# Configuration Setup
mkdir -p ~/.config/openbox
cp -a /etc/xdg/openbox/ ~/.config/

########################################################
# End of script for default config
#

apt autoremove

printf "\e[1;32mYou can now reboot! Thanks you.\e[0m\n"
