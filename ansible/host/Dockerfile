# HOST image - used to create containers to be managed by master

# use builded ansible_base (defined in ../base/Dockerfile) as a starting point
FROM ansible_base:latest
VOLUME /sys/fs/cgroup /run /tmp
ENV container=docker

# copy script from local disk to file system inside Docker image
COPY run.sh /var/

# adjust file permissions to make run.sh executable
RUN ssh-keygen -A
RUN chmod 755 /var/run.sh
CMD ["/var/run.sh"]

# systemd
ADD cmd.sh /usr/local/bin
RUN chmod +x /usr/local/bin/cmd.sh
CMD ["/usr/local/bin/cmd.sh"]
