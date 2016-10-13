#!/bin/bash

set -o nounset
DIR="$(dirname $(readlink -f $0))"

$DIR/cryptlvm/bootstrap.sh
$DIR/archinstaller
