#!/bin/bash

apt-get update

#-------------------------
#Xorg minimo
#-------------------------

apt-get --no-install-recommends install -y xserver-xorg-core
#apt-get --no-install-recommends install -y xserver-xorg-video-vesa
#apt-get --no-install-recommends install -y xserver-xorg-video-intel
#apt-get --no-install-recommends install -y xserver-xorg-video-nouveau
#apt-get --no-install-recommends install -y xserver-xorg-video-ati
apt-get --no-install-recommends install -y xserver-xorg-video-fbdev
apt-get --no-install-recommends install -y xserver-xorg

#-------------------------
#Xfce minimo
#-------------------------

apt-get --no-install-recommends install -y xfwm4
apt-get --no-install-recommends install -y xfce4-session
apt-get --no-install-recommends install -y xfce4-panel
apt-get --no-install-recommends install -y xfdesktop4
apt-get --no-install-recommends install -y policykit-1
apt-get --no-install-recommends install -y xfce4-power-manager
apt-get --no-install-recommends install -y gtk2-engines gtk2-engines-pixbuf
apt-get --no-install-recommends install -y x11-xserver-utils

#-------------------------
#Recomendados
#-------------------------


#### Basicos ###

apt-get --no-install-recommends install -y lightdm
#apt-get --no-install-recommends install -y slim
apt-get --no-install-recommends install -y lxterminal
apt-get --no-install-recommends install -y lxtask
apt-get --no-install-recommends install -y mousepad
#-------------------------
apt-get --no-install-recommends install -y network-manager-gnome
sed -i 's/false/true/g' /etc/NetworkManager/NetworkManager.conf
#-------------------------
apt-get --no-install-recommends install -y thunar



#### Codecs e Audio/Video ###

apt-get install -y libav-tools gstreamer1.0-libav
#apt-get install -y ffmpeg
apt-get install -y gstreamer1.0-plugins-good
apt-get install -y gstreamer1.0-plugins-bad
apt-get install -y gstreamer1.0-plugins-ugly
apt-get install -y gstreamer1.0-nice
apt-get --no-install-recommends install -y vlc qt4-qtconfig
apt-get --no-install-recommends -y install pulseaudio
apt-get --no-install-recommends install -y xfce4-pulseaudio-plugin
#apt-get install -y alsa-utils


#### Complementos ###

apt-get install -y xfce4-whiskermenu-plugin
apt-get install -y viewnior
apt-get --no-install-recommends install -y system-config-printer cups
#apt-get install -y xcompmgr
apt-get --no-install-recommends install -y xfburn
apt-get install -y firefox-esr firefox-esr-l10n-pt-br
apt-get --no-install-recommends install -y atril
#apt-get --no-install-recommends install -y desktop-base

reboot