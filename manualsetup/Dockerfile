from ubuntu:latest
USER root
RUN apt update
RUN apt upgrade -y
RUN /usr/sbin/sshd -p 2200
RUN exit
CMD ["/usr/sbin/sshd", "-D"]
