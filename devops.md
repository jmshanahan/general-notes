### Some devops and Nginx stuff

To create a self signed certificate go to
/etc/nginx/
and enter the following
sudo openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/nginx/cert.key -out /etc/nginx/cert.crt
