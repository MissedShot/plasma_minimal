#!/bin/env bash

# Basic Desktop
dnf -y in plasma-desktop plasma-desktop-doc plasma-browser-integration plasma-nm plasma-nm-l2tp plasma-nm-openconnect plasma-nm-openswan plasma-nm-openvpn plasma-nm-pptp plasma-nm-vpnc sddm sddm-breeze sddm-kcm breeze-gtk colord-kde gnome-keyring-pam glibc-all-langpacks kde-gtk-config kde-settings-pulseaudio kdegraphics-thumbnailers kdeplasma-addons kdnssd kwalletmanager NetworkManager-config-connectivity-fedora systemd-oomd-defaults kinfocenter plymouth-system-theme plasma-vault

# Printer support
# dnf in plasma-print-manager

# Thunderbolt support
# dnf in plasma-thunderbolt

# Base KDE Apps
dnf -y in plasma-systemmonitor dolphin konsole5 kate arc plasma-discover plasma-discover-notifier gwenview spectacle filelight

# Other apps
dnf -y in firefox

# Enable SDDM login screen
systemctl enable sddm

# Set graphic instead of tty
systemctl set-default graphical.target