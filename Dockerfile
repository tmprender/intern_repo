#old ubuntu
FROM ubuntu:18.04

RUN apt update

RUN apt install -y nginx php-fpm

COPY requirements.txt /requirements.txt
COPY hello.py /hello.py
CMD ["python3 hello.py"]

EXPOSE 80 443
