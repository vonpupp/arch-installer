#!/bin/bash

set -o nounset
DIR="$(dirname $(readlink -f $0))"

$DIR/01-partition.sh
$DIR/02-luks.sh
$DIR/03-lvm.sh
$DIR/04-format.sh
$DIR/05-mount.sh
