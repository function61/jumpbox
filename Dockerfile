FROM alpine:3.5

# Install OpenSSH and tmux
RUN apk add --no-cache openssh tmux

EXPOSE 22

CMD /run.sh

ADD bin/run.sh /run.sh

RUN mkdir /var/run/sshd \
	&& mkdir -p /root/.ssh \
	&& chmod 700 /root/.ssh \
	&& chown -Rf root:root /root/.ssh \
	&& chmod +x /run.sh

ADD conf/tmux.conf /root/.tmux.conf
ADD conf/motd /etc/motd
ADD conf/ssh.rc /root/.ssh/rc
ADD VERSION /VERSION
