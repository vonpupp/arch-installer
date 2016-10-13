#!/bin/bash

set -o nounset
DIR="$(dirname $(readlink -f $0))"

$DIR/cryptlvm/bootstrap.sh

cd $DIR
./archinstaller
cd -

echo "PermitRootLogin yes" >> /mnt/etc/ssh/sshd_config
