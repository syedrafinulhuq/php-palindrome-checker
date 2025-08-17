# Use official PHP + Apache image
FROM php:8.2-apache

# Enable Apache mod_rewrite
RUN a2enmod rewrite

# Set working directory
WORKDIR /var/www/html

# Copy app files into container
COPY public/ /var/www/html/

# Copy src if needed
COPY src/ /var/www/html/src/

# Expose port 8080 for Render (Render routes traffic to 8080 internally)
EXPOSE 8080

# Change Apache to listen on port 8080 instead of 80
RUN sed -i 's/80/8080/' /etc/apache2/ports.conf /etc/apache2/sites-enabled/000-default.conf

# Start Apache in foreground
CMD ["apache2-foreground"]
