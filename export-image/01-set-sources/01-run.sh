#!/bin/bash -e

# hold bootloader, maybe manually add the files instead at some point? (don't want kernel to be updated via transitive
# dependency)
on_chroot << EOF
apt-get update
apt-mark hold raspberrypi-bootloader
apt-get -y dist-upgrade
apt-get clean
EOF
