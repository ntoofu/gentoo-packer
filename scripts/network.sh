#!/bin/bash -e

chroot /mnt/gentoo /bin/bash -e <<'EOF'
echo '# Add by Packer for systemd support' >> /etc/default/grub
echo 'GRUB_CMDLINE_LINUX="init=/usr/lib/systemd/systemd net.ifnames=0 loglevel=3"' >> /etc/default/grub
grub2-mkconfig -o /boot/grub/grub.cfg
cat << 'EOF2' > /etc/systemd/network/eth0.net
[Match]
Name=eth0

[Network]
DHCP=ipv4

[DHCP]
ClientIdentifier=mac
EOF2
systemctl enable systemd-networkd.service
EOF
