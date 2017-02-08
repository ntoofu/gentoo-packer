#!/bin/bash -xe

if [ ! -z "$SSH_KEY" ]; then
    mkdir -p /mnt/gentoo/root/.ssh
    echo $SSH_KEY >> /mnt/gentoo/root/.ssh/authorized_keys
    chmod 600 /mnt/gentoo/root/.ssh/authorized_keys
fi

chroot /mnt/gentoo /bin/bash -xe <<'EOF'
systemctl enable sshd
EOF

