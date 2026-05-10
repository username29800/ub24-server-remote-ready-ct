FROM ub-rsr5:latest
USER root
RUN apt update
RUN apt upgrade -y
RUN apt install -y zstd nodejs npm
RUN curl -fsSL https://ollama.com/install.sh | sh
RUN npm i -g opencode-ai
USER user
RUN ollama serve & ollama pull qwen3:4b
USER root
CMD ["/usr/sbin/sshd", "-D"]
