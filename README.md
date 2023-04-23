# Debian Setup

## Debian Minimal Installation

## Xorg

```bash
apt install xorg xbacklight xbindkeys xvkbd xinput xserver-xorg-input-all
```

## X11 Dependency

```bash
apt install dbus-x11
```

## Build Essential

```bash
apt install build-essential
```

## Sound (PulseAudio Volume Control)

```bash
apt install pavucontrol pulseaudio pulseaudio-utils alsa-utils volumeicon-alsa
```

## Microcode for Intel/AMD 

```bash
apt install intel-microcode
```

## Network File Tools/System Events

```bash
apt install -y dialog mtools dosfstools avahi-daemon acpi acpid gvfs gvfs-backends
```

# i3lock

```bash
apt install i3lock
```

## Network Manager

```bash
apt install network-manager network-manager-gnome
```

## Windown Manager

```bash
apt install openbox
```

## Debian Menu

```bash
apt install menu
```

## Preferences Manager

```bash
apt install obconf
```

## Openbox Menu

```bash
apt install openbox-menu
```

## Display Manager

```bash
apt install lightdm
```

## Appearance Management

```bash
apt install lxappearance 
```

### libnotify-bin

```bash
apt install libnotify-bin
```

### lximage-qt

```bash
apt install lximage-qt
```

### qt5-style-plugins

```bash
apt install qt5-style-plugins
```

## Window Switcher, Run Dialog and dmenu Replacemen

```bash
apt install rofi
```

## Notification

```bash
apt install dunst
```

## File Manager

```bash
apt install thunar thunar-archive-plugin thunar-media-tags-plugin thunar-volman gamin xdg-user-dirs
```

Or `pcmanfm`.

## Archive

```bash
apt install xarchiver
```

## Lightweight Taskbar/Panel

```bash
apt install tint2
```

### Lightweight Compositor

```bash
apt install picom
```

## Terminal

```bash
apt install terminator
```

## Text Editor
```bash
apt install nano vim micro geany
```

## Browser

```bash
apt install firefox-esr chromium
```

## Power Manager

```bash
apt install xfce4-power-manager
```

## Desktop Background

```bash
apt install feh nitrogen hsetroot
```

## Theme

```bash
apt install
```

## Fonts

```bash
apt install fonts-jetbrains-mono fonts-firacode fonts-liberation2 fonts-ubuntu fonts-cascadia-code
```

## Screen Capture Utility

```bash
apt install scrot
```

## Onscreen Keyboard

```bash
apt install onboard
```

## Scan

```bash
apt install simple-scan
```

## Neofetch

```bash
apt install neofetch
```

## HTOP

```bash
apt install htop
```

## Mouse

```bash
apt install unclutter arandr
```

## Git and gh

```bash
apt install git gh
```

## Copy Openbox Default Configuration

```bash
mkdir -p /home/nashrullahalifauzi/.config/openbox
cp /etc/xdg/openbox/* /home/nashrullahalifauzi/.config/openbox/
```

## Enable Systemctl

```bash
systemctl enable avahi-daemon
systemctl enable acpid
systemctl enable lightdm
```

Add `exec openbox-session` to `~/.xinitrc`, run `startx`.


https://www.opendesktop.org/p/1316887

https://www.opendesktop.org/p/1166289


## gh

```bash
type -p curl >/dev/null || (apt update && apt install curl -y)
curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg \
&& chmod go+r /usr/share/keyrings/githubcli-archive-keyring.gpg \
&& echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | tee /etc/apt/sources.list.d/github-cli.list > /dev/null \
&& apt update \
&& apt install gh -y
```