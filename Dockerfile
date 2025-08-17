FROM php:8.3-cli-alpine

WORKDIR /app

# Copy everything to the container
COPY . /app

# Expose the port (optional, Render uses PORT env)
EXPOSE 10000

# Run PHP built-in server with 'public' as the document root
CMD ["sh", "-lc", "php -S 0.0.0.0:${PORT:-10000} -t /app/public"]
