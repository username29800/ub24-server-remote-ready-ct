FROM docker.io/library/ubuntu:24.04
RUN apt update
RUN apt upgrade -y
RUN apt install -y vim git iproute2 sudo unzip mc
RUN useradd -G sudo -s /usr/bin/bash -p "$(openssl passwd -6 'vnccntghy110')" user
USER user
WORKDIR /home/user
RUN git clone https://github.com/username29800/occasion
WORKDIR occasion/sve
RUN sh auto_setup
RUN sh build/cfgmini config_name
RUN exit
CMD ["/usr/bin/bash", "-l"]
