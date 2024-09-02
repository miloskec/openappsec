#!/bin/sh
# Substitute environment variables in the NGINX configuration template
envsubst '$BACKEND_URL' < /etc/nginx/nginx.conf.template > /etc/nginx/nginx.conf

# Test NGINX configuration to ensure it's valid
echo "Testing NGINX configuration..."
if ! nginx -t; then
    echo "NGINX configuration is invalid. Exiting."
    exit 1
fi
# Check if the NGINX PID file exists and is valid
if [ -f /var/run/nginx.pid ] && [ -s /var/run/nginx.pid ]; then
    echo "NGINX is already running, reloading configuration..."
    nginx -s reload
else
    echo "NGINX is not running, starting NGINX..."
    nginx -g 'daemon off;'
fi
