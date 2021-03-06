#!/bin/bash -xe

chroot /mnt/gentoo /bin/bash -xe <<'EOF'
emerge ">=sys-boot/grub-2.0"
echo "set timeout=0" >> /etc/grub.d/40_custom
grub-install /dev/sda
grub-mkconfig -o /boot/grub/grub.cfg
EOF
