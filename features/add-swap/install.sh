#!/bin/sh
set -e
SCRIPT_DIR=$(dirname "$(readlink -f "$0")")

# Create swapfile
echo "Creating 256MB Swapfile, this can take a while!"
dd if=/dev/zero of=/mnt/UDISK/swapfile bs=1024 count=262144  || echo "Couldn't create file /mnt/UDISK/swapfile" && exit 1
swapon /mnt/UDISK/swapfile || echo "Swapon failed" && exit 1
echo "Swapfile successfuly created"
uci set fstab.@swap[-1].device='/mnt/UDISK/swapfile'
uci set fstab.@swap[-1].enabled='1'
uci commit fstab
/etc/init.d/fstab restart
crontab ${SCRIPT_DIR}/crontab
echo "Done, enjoy your extra memory."

