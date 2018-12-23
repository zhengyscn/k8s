# Describe: test image

FROM busybox:latest
LABEL author=zhengyansheng email=zhengyscn@gmail.com

ENV DOC_ROOT="/data/web/html" WEB_SERVER_PACKAGE="nginx-1.15.7"

COPY index.html ${DOC_ROOT:-/data/www/html}
COPY yum.repos.d /etc/yum.repos.d/ 

WORKDIR /usr/local/src

ADD ${WEB_SERVER_PACKAGE}.tar.gz ./1/
# ADD http://nginx.org/download/nginx-1.15.7.tar.gz ./2/
#
VOLUME /data/mysql3306/

EXPOSE 80/tcp

RUN cd ./1 && \
    mv ${WEB_SERVER_PACKAGE} webserver
