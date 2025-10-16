# Use the official stable n8n image
# (Render will build and run this; no local Docker needed)
FROM n8nio/n8n:stable

# Small wrapper to map Render's $PORT to n8n's port and enable healthz
COPY docker-start.sh /docker-start.sh
RUN chmod +x /docker-start.sh

# Optional: set a sane timezone (change if you like)
ENV TZ=Europe/Berlin

# n8n listens on N8N_PORT (we'll set it from $PORT at runtime)
EXPOSE 5678

CMD ["/bin/sh", "/docker-start.sh"]
