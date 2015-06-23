[[ ! -d "/mnt/var/cache/pacman/pkg" ]] && mkdir -m 755 -p "/mnt/var/cache/pacman/pkg"
[[ ! -d "/mnt/var/lib/pacman/sync" ]] && mkdir -m 755 -p "/mnt/var/lib/pacman/sync"
mount -t nfs -o nolock nas:/share/cache/arch/$(uname -m)/var/lib/pacman/sync /mnt/var/lib/pacman/sync
mount -t nfs -o nolock nas:/share/cache/arch/$(uname -m)/var/cache/pacman/pkg /mnt/var/cache/pacman/pkg
