# Apache Virtual Host Setup

This README provides instructions for setting up Apache virtual hosts using the provided `vhost.conf` configuration file.

## Prerequisites

- Apache web server installed and running
- Access to modify Apache configuration files

## Setup

1. Copy the `vhost.conf` file to the appropriate Apache configuration directory (e.g., `/etc/apache2/sites-available/` on Ubuntu).

2. Include the necessary configuration files in the virtual host blocks:

   - For HTTP (port 80) virtual host:
     ```apache
     <VirtualHost *:80>
         Include /etc/apache2/conf-available/domains.conf
     </VirtualHost>
     ```
   
   - For HTTPS (port 443) virtual host:
     ```apache
     <VirtualHost *:443>
         Include /etc/apache2/conf-available/domains.conf
         Include /etc/apache2/conf-available/ssl.conf
     </VirtualHost>
     ```

3. Create the `domains.conf` file in the `/etc/apache2/conf-available/` directory and add your domain configurations. For example:

   ```apache
   <VirtualHost *:80>
       ServerName example.com
       DocumentRoot /var/www/example.com
       # Additional configuration...
   </VirtualHost>

4. /etc/apache2/conf-available/ directory and configure your SSL/TLS setting
5.
```
sudo a2ensite vhost.conf
sudo a2enmod ssl  # For HTTPS
sudo systemctl restart apache2
```
This README provides a basic setup guide for the Apache virtual hosts using the provided `vhost.conf` file. It assumes you have Apache installed and running, and you have the necessary permissions to modify the configuration files. Adjust the instructions and configurations as needed for your specific environment.
