#!/bin/bash -xe

cp $SCRIPTS/scripts/make.conf /mnt/gentoo/etc/portage/make.conf

chroot /mnt/gentoo /bin/bash -xe <<'EOF'
mkdir /usr/portage
emerge-webrsync
EOF
