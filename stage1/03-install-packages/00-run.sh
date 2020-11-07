#!/bin/bash -e

# TODO : remove this deletion, set up systemd networking
rm "${ROOTFS_DIR}/etc/sudoers.d/010_proxy"
rm "${ROOTFS_DIR}/usr/lib/raspi-config/init_resize.sh"