# BASE image - used as a starting point by MASTER and HOST images

# I use official Centos 7 image as a starting point
FROM centos:centos7
VOLUME /sys/fs/cgroup /run /tmp
ENV container=docker

# install required packages
RUN yum update -y \
    && yum install -y aptitude iputils-ping net-tools man vim openssh-server openssh-clients python

# ensure that required directories are created
RUN mkdir /var/run/sshd
RUN mkdir /root/.ssh

# systemd
ADD cmd.sh /usr/local/bin
RUN chmod +x /usr/local/bin/cmd.sh
CMD ["/usr/local/bin/cmd.sh"]
