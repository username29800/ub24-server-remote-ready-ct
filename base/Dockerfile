FROM docker.io/library/debian:latest
USER root
RUN apt update
RUN apt upgrade -y
RUN apt install -y vim git wget curl iproute2 sudo unzip gzip lzip mc locales htop fastfetch
RUN sed -i 's,^# en_US.UTF-8 UTF-8$,en_US.UTF-8 UTF-8,' /etc/locale.gen
RUN locale-gen
RUN useradd -G sudo -s /usr/bin/bash -p "$(openssl passwd -6 'vnccntghy110')" user
USER user
WORKDIR /home/user
RUN git clone https://gitlab.com/username29800/dnt2aw
WORKDIR /home/user/dnt2aw
RUN sh cfgenv.sh /home/user
WORKDIR /home/user
RUN exit
CMD ["/usr/bin/bash", "-l"]
