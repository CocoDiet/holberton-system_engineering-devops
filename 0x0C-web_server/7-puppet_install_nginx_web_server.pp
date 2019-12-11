# Changes SSH config file
exec { 'echo':
  path    => 'usr/bin:/bin',
  command => 'apt-get -y update; apt-get -y install nginx; echo "Holberton School" > /var/www/html/index.nginx-debian.html; sed -i "s/server_name _;/server_name _;\n\trewrite ^\/redirect_me https:\/\/github.com\/luischaparroc permanent;/" /etc/nginx/sites-available/default; service nginx start',
  returns => [0,1],
}