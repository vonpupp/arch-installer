lsblk --output KNAME,UUID
lsblk --output KNAME,UUID | grep "sda2" | tr -s " " | cut -d " " -f2
