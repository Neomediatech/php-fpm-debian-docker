# php-fpm-debian-docker
Dockerized version of php-fpm, based on original php-fpm image, but with some additional module

## There are various versions depending on needs
- 7.4-apache : many modules (phpredis, mailparse)
- 7.2-epe : very custom image
- 7.4-fpm-redis : with phpredis package
- 7.4-apache-redis : with phpredis package and apache
- 7.3-fpm : like 7.2-epe but with PHP 7.3
