#!/bin/sh
# Map Render's dynamic $PORT to n8n's port
export N8N_PORT="${PORT:-5678}"

# Enable health endpoint (off by default) for Render health checks
export QUEUE_HEALTH_CHECK_ACTIVE="true"  # enables /healthz
# Secure cookies since Render provides HTTPS
export N8N_SECURE_COOKIE="true"

# Start n8n
exec n8n start
