# php-fpm-debian-docker
Dockerized version of php-fpm, based on original php-fpm image, but with some additional module

## There are various versions depending on needs
- 7.4-apache : many modules (phpredis, mailparse, mysqli, bz2, gd, zip, pdo_mysql)
- 7.2-epe : very custom image
- 7.4-fpm-redis : (phpredis, pdo_mysql)
- 7.4-apache-redis : (phpredis, pdo_mysql) and apache
- 7.3-fpm : like 7.2-epe but with PHP 7.3
