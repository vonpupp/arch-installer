#!/usr/bin/env bash

cryptsetup luksChangeKey /dev/disk/by-partlabel/cryptlvm -S 0
