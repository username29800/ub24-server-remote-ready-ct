FROM ub-rsr5:latest
RUN apt update
RUN apt upgrade -y
RUN apt install -y gcc g++ make automake autoconf cmake m4 gettext pkgconf perl gawk python3
RUN exit
USER root
CMD ["/usr/sbin/sshd", "-D"]
