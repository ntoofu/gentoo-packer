#!/bin/bash -e

chroot /mnt/gentoo /bin/bash -e <<'EOF'
ln -snf /usr/share/zoneinfo/UTC /etc/localtime
echo UTC > /etc/timezone
EOF
