FROM ub-rsr5:latest
USER root
RUN apt update
RUN apt upgrade -y
RUN apt install -y gcc clang g++ make automake autoconf cmake m4 gettext pkgconf perl gawk
RUN apt install -y python3 python3-pip python3-venv
CMD ["/usr/sbin/sshd", "-D"]
