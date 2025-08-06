# Reference the latest upstream image—replace the tag as needed (or use build args in automation)
FROM openwebui/open-webui:latest

# Add a startup script
COPY docker-entrypoint.sh /docker-entrypoint.sh
RUN chmod +x /docker-entrypoint.sh

# Override the entrypoint to our script, which will call the real CMD
ENTRYPOINT ["/docker-entrypoint.sh"]