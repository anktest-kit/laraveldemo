FROM php:8.2-fpm

# Install required system dependencies and libraries
RUN apt-get update && apt-get install -y \
    libgd-dev \
    && docker-php-ext-install gd

RUN apt-get update && apt-get install -y

# Install inotify extension
#RUN pecl install inotify \
#    && docker-php-ext-enable inotify

#RUN apt-get update && apt-get install -y libzip-dev

RUN apt-get update && apt-get install -y \
    libzip-dev \
    unzip \
    && docker-php-ext-install zip

RUN docker-php-ext-install zip
RUN docker-php-ext-install gd
RUN docker-php-ext-enable zip
RUN docker-php-ext-enable gd

# Enable Apache mod_rewrite
#RUN a2enmod rewrite

# Install PHP extensions needed by Laravel
RUN docker-php-ext-install pdo pdo_mysql

# Set working directory to /var/www/html
#WORKDIR /var/www/html


# Set the correct ownership for the directory
#RUN chown -R www-data:www-data /var/www/html/storage /var/www/html/bootstrap/cache

# Set the correct permissions for the storage and cache directories
#RUN chmod -R 775 /var/www/html/storage /var/www/html/bootstrap/cache

# Ensure that www-data user can access the necessary directories
#USER www-data

# Clean up to reduce image size
RUN rm -rf /var/lib/apt/lists/*  

# Optionally, install Composer (if you need it in your container)
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer


# Create system user to run Composer and Artisan Commands
#RUN useradd -G www-data,root -u $uid -d /home/$user $user
#RUN mkdir -p /home/$user/.composer && \
 #   chown -R $user:$user /home/$user

# Set working directory

#USER $user
#EXPOSE 9000

#CMD php artisan serve --host=0.0.0.0 --port=9000

# Expose port 80 for Apache (default web server)
#EXPOSE 80


#RUN chown -R www-data:www-data /var/www/html/storage /var/www/html/bootstrap/cache

# If you want to run `php artisan serve` for development (not recommended for production)
#CMD php artisan serve --host=0.0.0.0 --port=9000

# Install Laravel dependencies using Composer
#RUN composer install --no-dev --optimize-autoloader

# Expose the PHP-FPM port (9000)
EXPOSE 9000

CMD ["php-fpm"]