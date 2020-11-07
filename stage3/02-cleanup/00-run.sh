#!/bin/bash -e

# trigger happy
on_chroot << EOF
apt-get -y purge triggerhappy
rm -rf /etc/triggerhappy
EOF

# rsyslog
on_chroot << EOF
systemctl disable rsyslog
EOF

rm -f "${ROOTFS_DIR}/etc/sudoers.d/010_pi-nopasswd"