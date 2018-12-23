FROM busybox:latest
LABEL author="zhengyansheng <zhengyscn@gmail.com>" app="httpd"

ENV WEB_DOC_ROOT="/data/web/html"

RUN mkdir -p ${WEB_DOC_ROOT} && \
    echo "<h1>busybox httpd server.</h1>" > ${WEB_DOC_ROOT}/index.html

# /bin/sh -c的子命令运行
# CMD /bin/httpd -f -h ${WEB_DOC_ROOT}

# 默认不会运行shell的子命令；变量属于shell的功能，内核无法识别。
# 接受命令行参数，并可以运行；
# Kerner内核启动
# CMD ["/bin/httpd","-f","-h","${WEB_DOC_ROOT}"]
# CMD ["/bin/httpd","-f","-h","/data/web/html"]

# 默认不允许直接运行命令行参数；
CMD ["/bin/httpd","-f","-h","/data/web/html"]
ENTRYPOINT ["/bin/sh","-c"]

#EXPOSE 80/tcp
