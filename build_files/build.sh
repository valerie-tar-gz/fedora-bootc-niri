#!/bin/bash

#set -ouex pipefail

### Install packages

# Packages can be installed from any enabled yum repo on the image.
# RPMfusion repos are available by default in ublue main images
# List of rpmfusion packages can be found here:
# https://mirrors.rpmfusion.org/mirrorlist?path=free/fedora/updates/39/x86_64/repoview/index.html&protocol=https&redirect=1

#Enable COPRs
dnf5 -y install 'dnf5-command(copr)'
dnf5 -y copr enable yalter/niri

# Install packages
#dnf5 install -y niri flatpak tuigreet
dnf5 install -y fastfetch niri tuigreet

#Disable COPRs
#dnf5 -y copr disable yalter/niri

# Use a COPR Example:
#
# dnf5 -y copr enable ublue-os/staging
# dnf5 -y install package
# Disable COPRs so they don't end up enabled on the final image:
# dnf5 -y copr disable ublue-os/staging

#### Example for enabling a System Unit File

#systemctl enable podman.socket
