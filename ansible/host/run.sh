#!/bin/bash

# add a master public key to authorized_keys on host in order to allow SSH connections
cat /var/ans/master_key.pub >> /root/.ssh/authorized_keys

# systemd
exec /usr/sbin/init

# start SSH server
/usr/sbin/sshd -D
