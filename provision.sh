#!/bin/bash -e

if [[ -z $STAGE3 ]]
then
  echo "STAGE3 environment variable must be set to a stage3 tar ball file URL"
  exit 1
fi

if [[ -z $SCRIPTS ]]
then
  SCRIPTS=.
fi

chmod +x $SCRIPTS/scripts/*.sh

for script in \
  partition   \
  stage3      \
  mounts      \
  resolv.conf \
  portage     \
  systemd     \
  timezone    \
  fstab       \
  kernel      \
  grub        \
  $VM_TYPE    \
  network     \
  ssh         \
  cleanup
do
  "$SCRIPTS/scripts/$script.sh"
done

echo "All done."
