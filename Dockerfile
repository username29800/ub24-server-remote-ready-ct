from ubuntu:latest
RUN apt update
RUN apt upgrade -y
RUN apt install -y gcc g++ make automake autoconf cmake m4 gettext pkgconf vim git iproute2 openssh-server openssh-client sudo
RUN mkdir -p /var/run/sshd
RUN chmod 0755 /var/run/sshd
RUN useradd -G sudo -s /usr/bin/bash -p "$(openssl passwd -6 'vnccntghy110')" user
USER user
WORKDIR /home/user
RUN git clone https://github.com/username29800/occasion
WORKDIR occasion/sve
RUN sh auto_setup
RUN sh build/cfgmini config_name
RUN exit
USER root
CMD ["/usr/sbin/sshd", "-D"]
