FROM ub-rsr5:latest
USER root
WORKDIR /root
RUN apt update
RUN apt upgrade -y
RUN apt install -y zstd
RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash && \
    [ -s ".nvm/nvm.sh" ] && \
    \. .nvm/nvm.sh && \
    nvm install 24
RUN npm i -g opencode-ai
RUN npm i -g openclaw
USER user
WORKDIR /home/user
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
USER root
CMD ["/usr/sbin/sshd", "-D"]
