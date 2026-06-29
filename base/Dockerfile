FROM docker.io/library/debian:latest
USER root
RUN apt update
RUN apt upgrade -y
RUN apt install -y vim git wget curl iproute2 sudo unzip gzip lzip mc
RUN useradd -G sudo -s /usr/bin/bash -p "$(openssl passwd -6 'vnccntghy110')" user
USER user
WORKDIR /home/user
RUN git clone https://gitlab.com/username29800/ssh-dew
WORKDIR /home/user/ssh-dotwell
RUN . ./src.sh &&\
    chmod 744 ./cfgenv.sh &&\
    ./cfgenv.sh
WORKDIR /home/user
RUN exit
CMD ["/usr/bin/bash", "-l"]
