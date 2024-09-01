# Webserver Processing
FROM php:8.1-apache

# Copy configuration file
COPY ./*.conf /etc/apache2/conf-available/
COPY ./vhost.conf /etc/apache2/sites-enabled/vhost.conf

# Enable SSL
RUN a2enmod ssl

# Load port
EXPOSE 80 443