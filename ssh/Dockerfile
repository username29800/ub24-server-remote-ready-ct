FROM ub-rsr-rc:latest
USER root
RUN apt update
RUN apt upgrade -y
RUN apt install -y openssh-server openssh-client
RUN mkdir -p /var/run/sshd
RUN chmod 0755 /var/run/sshd
RUN exit
CMD ["/usr/sbin/sshd", "-D"]
