#!/bin/bash

set -o nounset
DIR="$(dirname $(readlink -f $0))"
source $DIR/vars.sh

# ------------------------------------------------------------------------
# LUKS
# ------------------------------------------------------------------------
echo -e "\nCreating encrypted devices...\n$HR"
sleep 5
echo -e $PASSWORD | cryptsetup luksFormat /dev/disk/by-partlabel/cryptlvm
sleep 5
echo -e $PASSWORD | cryptsetup luksOpen /dev/disk/by-partlabel/cryptlvm lvm
