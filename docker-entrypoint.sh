FROM php:8.2-cli

# Install nginx and PHP-FPM
RUN apt-get update && apt-get install -y \
    nginx \
    && rm -rf /var/lib/apt/lists/*

# Copy adminer
COPY index.php /var/www/html/index.php

# Expose port 80
EXPOSE 80

# Start nginx and PHP-FPM
CMD service php8.2-fpm start && nginx -g 'daemon off;'
