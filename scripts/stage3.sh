#!/bin/bash -xe

tarball=${STAGE3##*/}

mount /dev/sda4 /mnt/gentoo

cd /mnt/gentoo
wget $STAGE3
tar xvjpf $tarball
rm -f $tarball
