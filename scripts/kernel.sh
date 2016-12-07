#!/bin/bash -xe

cp $SCRIPTS/scripts/kernel.config /mnt/gentoo/tmp/

chroot /mnt/gentoo /bin/bash -xe <<'EOF'
emerge sys-devel/gcc
gcc-config $(gcc-config -l | grep x86_64 | tail -n 1 | cut -f 3 -d ' ')
env-update && source /etc/profile
emerge sys-kernel/gentoo-sources
emerge sys-kernel/genkernel
cd /usr/src/linux
mv /tmp/kernel.config .config
genkernel --install --symlink --no-zfs --no-btrfs --oldconfig all
emerge -c sys-kernel/genkernel
EOF
