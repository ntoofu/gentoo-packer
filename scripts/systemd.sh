#!/bin/bash -xe

chroot /mnt/gentoo /bin/bash -xe <<'EOF'
ln -sf /proc/self/mounts /etc/mtab
eselect profile set $(eselect profile list | grep -E "default/linux/amd64/[0-9\.]*/no-multilib" | sed -e 's/^.*\[\([0-9]\+\)\].*$/\1/')
emerge --unmerge sys-fs/udev || :
emerge --unmerge sys-fs/eudev || :
emerge --deselect sys-fs/udev || :
emerge --deselect sys-fs/eudev || :
emerge -vDN @world
EOF
