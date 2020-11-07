#!/bin/bash -e

# TODO : remove this deletion, set up systemd networking
ln -sf /dev/null "${ROOTFS_DIR}/etc/systemd/network/99-default.link"