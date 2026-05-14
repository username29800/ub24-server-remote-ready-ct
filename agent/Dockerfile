FROM ub-rsr5:latest
USER root
RUN apt update
RUN apt upgrade -y
RUN apt install -y zstd nodejs npm
RUN npm i -g opencode-ai
USER user
USER root
CMD ["/usr/sbin/sshd", "-D"]
