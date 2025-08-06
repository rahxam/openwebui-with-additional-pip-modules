# Reference the latest upstream image from GitHub Container Registry
FROM ghcr.io/openwebui/open-webui:latest

# Add a startup script
COPY docker-entrypoint.sh /docker-entrypoint.sh
RUN chmod +x /docker-entrypoint.sh

# Override the entrypoint to our script, which will call the real CMD
ENTRYPOINT ["/docker-entrypoint.sh"]