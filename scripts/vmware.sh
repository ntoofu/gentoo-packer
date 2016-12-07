#!/bin/bash -xe

chroot /mnt/gentoo /bin/bash -xe <<'EOF'
emerge "app-emulation/open-vm-tools" --autounmask-write
etc-update --automode -5
emerge "app-emulation/open-vm-tools"
EOF
