#!/bin/sh
#desc: entrypoint


cat > /etc/nginx/conf.d/www.conf << EOF
server {
	server_name ${HOSTNAME};
	listen ${IP:-0.0.0.0}:${PORT:-8080};
	root /data/web/html;
}
EOF


exec "$@"
