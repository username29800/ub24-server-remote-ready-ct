FROM agent-test:latest
USER root
RUN apt update
RUN apt upgrade -y
RUN apt install -y xfe thunar mousepad ibus ibus-hangul dbus dbus-x11 rxvt-unicode xfce4-terminal
USER user
WORKDIR /home/user
RUN git clone https://github.com/naver/d2codingfont
WORKDIR /home/user/d2codingfont
RUN unzip D2Coding-Ver1.3.2*.zip
RUN mkdir -p /home/user/.fonts
RUN cp -a D2CodingAll/*.ttc ~/.fonts
RUN fc-cache
USER root
CMD ["/usr/sbin/sshd", "-D"]
