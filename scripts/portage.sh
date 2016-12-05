#!/bin/bash -e

chroot /mnt/gentoo /bin/bash -e <<'EOF'
mkdir /usr/portage
emerge-webrsync
EOF
