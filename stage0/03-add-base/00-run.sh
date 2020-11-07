#!/bin/bash -e

find files/base/boot -type f -exec install -Dm 755 "{}" "${ROOTFS_DIR}/boot/{}" \;
find files/base/root -type f -exec install -Dm 755 "{}" "${ROOTFS_DIR}/{}" \;