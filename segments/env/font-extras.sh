#!/bin/sh
# run as root
apt install -y fonts-noto-cjk-extra fonts-nanum fontconfig
cd /
git clone https://github.com/naver/d2codingfont
cd d2codingfont
unzip D2Coding-Ver1.3.2-*.zip
mkdir -p /usr/share/fonts
cp D2Coding/D2Coding-Ver1.3.2-*.ttf /usr/share/fonts
fc-cache
