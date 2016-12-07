#!/bin/bash -xe

chroot /mnt/gentoo /bin/bash -xe <<'EOF'
ln -snf /usr/share/zoneinfo/$TZ /etc/localtime
echo $TZ > /etc/timezone
EOF
