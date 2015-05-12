docker build -t symfony/app app
docker build -t symfony/php-fpm php-fpm
docker build -t symfony/nginx nginx

mkdir symfony
mkdir logs
