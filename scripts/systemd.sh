#!/bin/bash -xe

chroot /mnt/gentoo /bin/bash -xe <<'EOF'
eselect profile set $(eselect profile list | grep -E "default/linux/amd64/[0-9\.]*/systemd" | sed -e 's/^.*\[\([0-9]\+\)\].*$/\1/')
ln -sf /proc/self/mounts /etc/mtab
emerge --deselect sys-fs/udev || :
emerge -vDN @world
EOF
