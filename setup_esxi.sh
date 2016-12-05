#!/bin/sh

esxi=$1

if [ -z "$esxi" ]; then
    echo "please specify ESXi hostname or IP address" >&2
fi

ssh root@$esxi esxcli system settings advanced set -o /Net/GuestIPHack -i 1

