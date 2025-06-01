FROM php:7.4-apache

# Install mysqli
RUN docker-php-ext-install mysqli

# Copy app code to container
COPY index.php /var/www/html/

# Set correct permissions
RUN chown -R www-data:www-data /var/www/html

