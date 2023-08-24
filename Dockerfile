FROM php:8.1-fpm-alpine AS php

RUN docker-php-ext-install pdo_mysql

RUN install -o www-data -g www-data -d /var/www/upload/image/

RUN echo "file_uploads = On\n" \
         "memory_limit = 5M\n" \
         "upload_max_filesize = 5M\n" \
         "post_max_size = 5M\n" \
         "max_execution_time = 600\n" \
         > /usr/local/etc/php/conf.d/uploads.ini
