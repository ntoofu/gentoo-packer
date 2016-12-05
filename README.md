# Gentoo - VM Image for vSphere

This is a stage3 installation of Gentoo (amd64, nomultilib) on vSphere environment.

It is based on the official
[Quick Install](https://www.gentoo.org/doc/en/gentoo-x86-quickinstall.xml)
guide, but avoids completing any of the optional steps.

> **Note:** Currently the VMWare Fusion version has no vmware-tools installed,
> but NFS mounts should work fine.

## Usage

This is a [Packer](https://packer.io/) template. Install the latest version of
Packer, then:

    packer build virtualbox.json

This will chew for a bit and finally output a Vagrant box file.

If the error about GuestIPHack occurs, execute the following command first:

    ./setup_esxi.sh $ESXI_HOSTNAME


## Disk size

The disk is a 60GB sparse disk. You do not need 60GB of free space initially.
The disk will grow as disk usage increases.

## What's installed?


## What's configured?

Everything is left as the defaults. The time zone is set to UTC.
