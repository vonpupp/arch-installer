MODULES="(i915)"
sed -i "s/MODULES=.*/MODULES=${MODULES}/" mkinitcpio.conf
HOOKS="(base udev autodetect modconf block keymap encrypt lvm2 filesystems keyboard fsck)"
sed -i "s/HOOKS=.*/HOOKS=${HOOKS}/" mkinitcpio.conf
