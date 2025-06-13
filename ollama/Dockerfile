FROM ollama/ollama

COPY ollama/init.sh /ollama-init.sh
RUN chmod +x /ollama-init.sh

ENTRYPOINT ["/bin/bash", "-c", "/ollama-init.sh && /usr/bin/ollama serve"]
