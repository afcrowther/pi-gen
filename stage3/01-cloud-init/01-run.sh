#!/bin/bash -e

install -m 644 -g root -o root files/cloud.cfg ${ROOTFS_DIR}/etc/cloud/
install -m 644 -g root -o root files/cloud.cfg.d/* ${ROOTFS_DIR}/etc/cloud/cloud.cfg.d/

touch ${ROOTFS_DIR}/etc/growroot-disabled