#!/bin/sh -eu

# generate SSH host key (not done by default on Alpine), and actually if we'd do it when
# building the Docker image, that'd be a huge security implication (leak the host private key)
if [ ! -f /etc/ssh/ssh_host_rsa_key ]; then
	ssh-keygen -f /etc/ssh/ssh_host_rsa_key -N '' -b 4096 -t rsa
fi

# display version number in motd
VERSION=$(cat /VERSION)

sed -i -- "s/_VERSION_/$VERSION/" /etc/motd

echo "$SSH_PUBKEY" > /root/.ssh/authorized_keys

chmod 600 /root/.ssh/authorized_keys

exec /usr/sbin/sshd -D
