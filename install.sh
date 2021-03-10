sudo apt-get update
sudo apt-get install certbot nginx

sudo rm -r /var/www/html && sudo mkdir /var/www/html
sudo cp index.html /var/www/html/

sudo cp default.conf /etc/nginx/conf.d/

sudo nginx -s reload

sudo certbot certonly --webroot --email EMAIL@DOMAIN.COM --agree-tos --no-eff-email --webroot-path /var/www/html -d WWW.DOMAIN.COM

sudo bash -c "echo -e '\ndeploy-hook = nginx -s reload' >> /etc/letsencrypt/cli.ini"

