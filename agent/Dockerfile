FROM agent-test:latest
USER root
RUN apt update
RUN apt upgrade -y
RUN apt install -y zstd
USER user
WORKDIR /home/user
RUN git clone https://github.com/nvm-sh/nvm .nvm
WORKDIR /home/user/.nvm
RUN bash install.sh
WORKDIR /home/user
RUN bash -lc '. /home/user/.nvm/nvm.sh && nvm install 24'
RUN bash -lc 'npm i -g opencode-ai'
USER user
RUN mkdir -p .config/opencode && \
    echo '{' >> .config/opencode/opencode.json && \
    echo '  "$schema": "https://opencode.ai/config.json",' >> .config/opencode/opencode.json && \
    echo '  "provider": {' >> .config/opencode/opencode.json && \
    echo '    "ollama": {' >> .config/opencode/opencode.json && \
    echo '      "npm": "@ai-sdk/openai-compatible",' >> .config/opencode/opencode.json && \
    echo '      "name": "Ollama (local)",' >> .config/opencode/opencode.json && \
    echo '      "options": {' >> .config/opencode/opencode.json && \
    echo '        "baseURL": "http://localhost:11434/v1"' >> .config/opencode/opencode.json && \
    echo '      },' >> .config/opencode/opencode.json && \
    echo '      "models": {' >> .config/opencode/opencode.json && \
    echo '        "ub-rsr-a": {' >> .config/opencode/opencode.json && \
    echo '          "name": "ub-rsr agentic model interface"' >> .config/opencode/opencode.json && \
    echo '        }' >> .config/opencode/opencode.json && \
    echo '      }' >> .config/opencode/opencode.json && \
    echo '    }' >> .config/opencode/opencode.json && \
    echo '  }' >> .config/opencode/opencode.json && \
    echo '}' >> .config/opencode/opencode.json
RUN rm -f ~/.bash_history
USER root
CMD ["/usr/sbin/sshd", "-D"]
