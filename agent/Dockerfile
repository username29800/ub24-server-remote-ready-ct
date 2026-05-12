FROM ub-rsr5:latest
USER root
RUN apt update
RUN apt upgrade -y
RUN apt install -y zstd nodejs npm
RUN curl -fsSL https://ollama.com/install.sh | sh
RUN npm i -g opencode-ai
USER user
RUN ollama serve &\
    sleep 3 &&\
    ollama pull llama3.2:1b &&\
    ollama pull qwen2.5-coder:0.5b
USER root
CMD ["/usr/sbin/sshd", "-D"]
