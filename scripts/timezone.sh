#!/bin/bash -e

chroot /mnt/gentoo /bin/bash -e <<'EOF'
ln -snf /usr/share/zoneinfo/$TZ /etc/localtime
echo $TZ > /etc/timezone
EOF
