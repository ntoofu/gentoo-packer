#!/bin/bash -xe

chroot /mnt/gentoo /bin/bash -xe <<'EOF'
echo '# Add by Packer for systemd support' >> /etc/default/grub
echo 'GRUB_CMDLINE_LINUX="init=/usr/lib/systemd/systemd net.ifnames=0 loglevel=3"' >> /etc/default/grub
grub-mkconfig -o /boot/grub/grub.cfg
cat << 'EOF2' > /etc/systemd/network/eth0.network
[Match]
Name=eth0

[Network]
DHCP=ipv4

[DHCP]
ClientIdentifier=mac
EOF2
systemctl enable systemd-networkd.service
EOF
