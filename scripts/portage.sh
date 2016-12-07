#!/bin/bash -xe

chroot /mnt/gentoo /bin/bash -xe <<'EOF'
mkdir /usr/portage
emerge-webrsync
EOF
