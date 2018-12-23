FROM nginx:1.14-alpine
LABEL author="zhengyansheng <zhengyscn@gmail.com>" app="httpd"

ENV WEB_DOC_ROOT="/data/web/html"

RUN mkdir -p ${WEB_DOC_ROOT} && \
    echo "<h1>busybox httpd server.</h1>" > ${WEB_DOC_ROOT}/index.html

ADD entrypoint.sh /bin/

# HEALTHCHECK --start-period=3s CMD wget -O - -q http://${IP:-0.0.0.0}:${PORT:-8080}/ 
HEALTHCHECK --start-period=3s CMD wget -O - -q http://${IP:-0.0.0.0}:${PORT:-8081}/ 

CMD ["/usr/sbin/nginx","-g","daemon off;"]
ENTRYPOINT ["/bin/entrypoint.sh"]
