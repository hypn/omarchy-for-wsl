#!/bin/bash

# omarchy and user requirements
pacman -Sy --noconfirm --needed wget sudo

# add and switch to a non-root user
useradd -m -s /bin/bash user
passwd -d user
usermod -aG wheel user
echo "%wheel ALL=(ALL:ALL) NOPASSWD: ALL" >> /etc/sudoers.d/99-wheel-nopasswd

# switch to the new user, then run the boot script
echo
echo
echo "WSL should be setup for Omarchy, please run:"
echo "	wget -qO- https://raw.githubusercontent.com/hypn/omarchy-for-wsl/refs/heads/master/boot.sh | bash"
echo
sudo -u user bash

