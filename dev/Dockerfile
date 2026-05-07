FROM test:latest
RUN apt update
RUN apt upgrade -y
RUN apt install -y gcc g++ make automake autoconf cmake m4 gettext pkgconf
RUN exit
USER root
CMD ["/usr/sbin/sshd", "-D"]
