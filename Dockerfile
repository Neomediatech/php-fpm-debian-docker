FROM php:7.2-fpm

ENV PHP-FPM_VERSION="7.2.15"

LABEL maintainer="docker-dario@neomediatech.it" \ 
      org.label-schema.version=${PHP-FPM_VERSION}

ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=Europe/Rome

RUN echo "php version: ${PHP_VERSION}"

RUN echo $TZ /etc/timezone && \ 
    apt-get update && \
    apt-get install -y libbz2-dev libpng-dev pdfgrep libfcgi-bin netcat tzdata && \
    rm -rf /var/lib/apt/lists* && \
    echo "ping.path = /ping" >> /usr/local/etc/php-fpm.d/zz-docker.conf && \
    for mod in mysqli bz2 gd zip; do docker-php-ext-install $mod done

echo "         -----------------------------"
echo "             Starting php-fpm ...."
echo "         -----------------------------"

CMD ["php-fpm"]

#exec php-fpm
exec "$@"
