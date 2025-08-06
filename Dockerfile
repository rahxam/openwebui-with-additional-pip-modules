# Reference the latest upstream image from GitHub Container Registry
FROM ghcr.io/open-webui/open-webui:main

# Add a startup script
COPY docker-entrypoint.sh /docker-entrypoint.sh
RUN chmod +x /docker-entrypoint.sh

# Override the entrypoint to our script, which will call the real CMD
ENTRYPOINT ["/docker-entrypoint.sh"]