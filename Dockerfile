FROM caddy:2-alpine

# Copy Caddyfile
COPY Caddyfile /etc/caddy/Caddyfile

# Expose port 8080
EXPOSE 8080

# Set default environment variable (can be overridden at runtime)
ENV INTERNAL_SERVICE_URL="http://fly-uptime-kuma-lubien.flycast"

# Run Caddy
CMD ["caddy", "run", "--config", "/etc/caddy/Caddyfile", "--adapter", "caddyfile"]
