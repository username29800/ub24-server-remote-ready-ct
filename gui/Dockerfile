FROM d-rsrc:latest
USER root
RUN apt update
RUN apt upgrade -y
RUN apt install -y xfe thunar mousepad ibus ibus-hangul dbus dbus-x11 rxvt-unicode xfce4-terminal tigervnc-standalone-server tigervnc-viewer rofi openbox firefox-esr geany codeblocks vim-gtk3 plank xcompmgr
USER user
RUN echo pkill xcompmgr > refresh
RUN echo pkill plank >> refresh
RUN echo xcompmgr \& >> refresh
RUN echo plank \& >> refresh
RUN echo pkill xcompmgr > startup
RUN echo pkill plank >> startup
RUN echo xcompmgr \& >> startup
RUN echo plank \& >> startup
RUN echo plank --preferences >> startup
RUN echo ibus-daemon -rxd >> startup
RUN echo ibus-setup \& >> startup
RUN echo plank --preferences > settings
RUN echo ibus-daemon -rxd >> settings
RUN echo ibus-setup \& >> settings
RUN chmod 0755 startup refresh settings
WORKDIR /home/user
RUN git clone https://github.com/naver/d2codingfont
WORKDIR /home/user/d2codingfont
RUN unzip D2Coding-Ver1.3.2*.zip
RUN mkdir -p /home/user/.fonts
RUN cp -a D2CodingAll/*.ttc ~/.fonts
RUN fc-cache
USER root
CMD ["/usr/sbin/sshd", "-D"]
