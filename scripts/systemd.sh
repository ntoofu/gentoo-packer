#!/bin/bash -xe

chroot /mnt/gentoo /bin/bash -xe <<'EOF'
ln -sf /proc/self/mounts /etc/mtab
emerge --deselect sys-fs/udev || :
emerge -vDN @world
EOF
