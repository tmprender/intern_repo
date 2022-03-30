#old ubuntu
FROM ubuntu:18.04

RUN apt update

RUN apt install -y nginx php-fpm

COPY start.sh /start.sh
CMD ["./start.sh"]

EXPOSE 80 443
