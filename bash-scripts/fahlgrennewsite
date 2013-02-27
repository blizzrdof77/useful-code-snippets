#!/bin/bash

usage()
{
	echo "Usage: addsite.sh 'name' 'domain'"
	echo "name = valid unix username"
	echo "domain = dns name of site (newsite.fahlgrendigital.com)"
}

if [ -z "$1" ]
then
	usage
	exit 1
fi

if [ -z "$2" ]
then
	usage
	exit 1
fi

echo 'Adding user...'
useradd -m -c '$2' -s /bin/bash  $1
echo 'Setting password...'
echo $1:th1nkgr1p | chpasswd

echo 'Changing to site home directory...'
cd /home/$1
echo 'Creating directories...'
mkdir public_html
mkdir log
echo 'Setting directory permissions...'
chown -R $1 *
chgrp -R www-data public_html
chgrp -R www-data log
chmod 775 public_html
chmod 775 log
dollarOne='$1'
echo 'Creating vhost file...'
cat << _EOF_ >/etc/apache2/sites-available/$2
<VirtualHost *:80>
	ServerName $2
	ServerAdmin serveradmin@fahlgren.com

        RewriteEngine On
        RewriteCond %{HTTP_HOST} !^$2
        RewriteRule (.*) http://$2/$dollarOne [R=301,L]

	DocumentRoot /home/$1/public_html
	<Directory /home/$1/public_html>
		Options -Indexes FollowSymLinks -MultiViews
		AllowOverride All
		Order allow,deny
		allow from all
	</Directory>

	ErrorLog /home/$1/log/error.log
	LogLevel warn
	CustomLog /home/$1/log/access.log combined
</VirtualHost>
_EOF_

echo 'Setting symbolic links...'
a2ensite /etc/apache2/sites-available/$2
