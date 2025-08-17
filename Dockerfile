# Use the official PHP image with Apache
FROM php:8.2-apache

# Set working directory
WORKDIR /var/www/html

# Copy project files to the container
COPY . /var/www/html

# Install required PHP extensions (if any)
RUN docker-php-ext-install mysqli pdo pdo_mysql && docker-php-ext-enable pdo_mysql

# Enable Apache mod_rewrite
RUN a2enmod rewrite

# Expose port 10000 (Render uses port 10000 for web services)
EXPOSE 10000

# Set environment variables for Render
ENV PORT=10000

# Start Apache in the foreground
CMD ["apache2-foreground"]
