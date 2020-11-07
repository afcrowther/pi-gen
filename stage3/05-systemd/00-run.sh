#!/bin/bash -e

# Install systemd settings
install -m 644 -g root -o root files/system.conf ${ROOTFS_DIR}/etc/systemd/
install -m 644 -g root -o root files/journald.conf ${ROOTFS_DIR}/etc/systemd/
install -m 644 -g root -o root files/timesyncd.conf ${ROOTFS_DIR}/etc/systemd/

# Enable systemd-timesyncd
on_chroot << EOF
apt-get -y purge fake-hwclock
systemctl enable systemd-timesyncd.service
rm -f /etc/dhcp/dhclient-exit-hooks.d/timesyncd
EOF