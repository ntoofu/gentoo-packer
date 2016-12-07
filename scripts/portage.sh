#!/bin/bash -xe

cp $SCRIPTS/scripts/make.conf /mnt/gentoo/etc/portage/make.conf

chroot /mnt/gentoo /bin/bash -xe <<'EOF'
mkdir /usr/portage
emerge-webrsync
eselect profile set $(eselect profile list | grep -E "default/linux/amd64/[0-9\.]*/no-multilib" | sed -e 's/^.*\[\([0-9]\+\)\].*$/\1/')
EOF
