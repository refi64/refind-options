#!/bin/bash

UUID=$(findmnt -n -o UUID --target /)

OPTIONS="root=$UUID initrd=/boot/intel-ucode.img initrd=/boot/initramfs.img"

cat <<EOF
"Boot with standard options" "$OPTIONS"
"Boot into rescue mode" "$OPTIONS systemd.unit=rescue.target"
"Boot into emergency mode" "$OPTIONS systemd.unit=emergency.target"
EOF
