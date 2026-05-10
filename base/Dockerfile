FROM docker.io/library/ubuntu:26.04
USER root
RUN apt update
RUN apt upgrade -y
RUN apt install -y vim git wget curl iproute2 sudo unzip gzip lzip mc
RUN useradd -G sudo -s /usr/bin/bash -p "$(openssl passwd -6 'vnccntghy110')" user
USER user
WORKDIR /home/user
RUN git clone https://github.com/username29800/occasion
WORKDIR occasion/sve
RUN sh auto_setup
RUN sh build/cfgmini config_name
RUN exit
CMD ["/usr/bin/bash", "-l"]
