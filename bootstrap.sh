#!/bin/bash

set -o nounset
DIR="$(dirname $(readlink -f $0))"

$DIR/cryptlvm/bootstrap.sh

cd $DIR
./archinstaller
cd -

$DIR/cryptlvm/05-mount.sh
echo "PermitRootLogin yes" >> /mnt/etc/ssh/sshd_config
chroot /mnt
systemctl enable sshd
exit
$DIR/cryptlvm/06-umount.sh
