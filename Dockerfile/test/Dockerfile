# Description: test image
FROM busybox:latest
LABEL author="zhengyansheng" email="zhengyscn@gmail.com"

COPY index.html /data/web/html/
COPY yum.repos.d /etc/yum.repos.d/

WORKDIR /usr/local/src/

ADD http://nginx.org/download/nginx-1.15.7.tar.gz /usr/local/src/1/
ADD nginx-1.15.7.tar.gz ./2/