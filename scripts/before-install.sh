#!/bin/bash
mkdir -p /etc/nginx/site-available/xeniapp
chmod 755 /etc/nginx/site-available/xeniapp

mkdir -p /etc/nginx/site-enabled
chmod 755 /etc/nginx/site-enabled

cat <<-EOF > /etc/nginx/site-enabled/xeniapp
server {
       listen 80;

       root /opt/xeniuser;
       index index.html;

       location / {
               try_files $uri $uri/ /index.html;
       }
}
EOF

chmod 755 /etc/nginx/site-enabled/xeniapp