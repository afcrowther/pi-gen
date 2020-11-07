#!/bin/bash -e

install -m 755 -g root -o root files/update-motd.d/* ${ROOTFS_DIR}/etc/update-motd.d/
install -m 644 -g root -o root files/motd ${ROOTFS_DIR}/etc/motd
install -m 644 -g root -o root files/issue ${ROOTFS_DIR}/etc/issue
install -m 644 -g root -o root files/issue.net ${ROOTFS_DIR}/etc/issue.net

# remove wifi and ssh warnings
rm ${ROOTFS_DIR}/etc/profile.d/sshpwd.sh
rm ${ROOTFS_DIR}/etc/profile.d/wifi-check.sh