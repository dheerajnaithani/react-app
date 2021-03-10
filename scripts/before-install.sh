#!/bin/bash

mkdir -p /etc/nginx/sites-enabled
chmod 755 /etc/nginx/sites-enabled

mkdir -p /etc/nginx/sites-available/
chmod 755 /etc/nginx/sites-available

cat <<-EOF > /etc/nginx/sites-available/xeniapp
server {
       listen 80 default_server;
       server_name _;

       index index.html;

       root /opt/xeniuser;
}
EOF

ln -s /etc/nginx/sites-available/xeniapp /etc/nginx/sites-enabled/
