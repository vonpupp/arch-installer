#!/bin/bash

set -o nounset
DIR="$(dirname $(readlink -f $0))"
source $DIR/vars.sh

# ------------------------------------------------------------------------
# MOUNT
# ------------------------------------------------------------------------
echo -e "\nUnmounting partitions...\n$HR"
umount /mnt/home
umount /mnt/boot
umount /mnt
