# NextCloud

## Install

#### Create script to install LAMP

```bash
cat >> /tmp/install-lamp.sh << "EOF"
sudo apt update
sudo apt install -y lamp-server^
sudo apt install -y libxml2-dev php-zip php-dom php-xmlwriter php-xmlreader php-gd php-curl php-mbstring php-xml php-intl php-imagick php-bz2
sudo locale-gen  es_CO.UTF-8
sudo a2enmod headers
sudo a2enmod env
sudo a2enmod dir
sudo a2enmod mime
sudo a2enmod ssl
sudo a2ensite default-ssl
sudo service apache2 reload
EOF
```

#### Install LAMP

```bash
$
sudo bash /tmp/install-lamp.sh
```

#### Place NextCloud 10.0.1 in ```/var/www```

```bash
$
cd /tmp
curl -LO https://download.nextcloud.com/server/releases/nextcloud-10.0.1.tar.bz2
curl -LO https://download.nextcloud.com/server/releases/nextcloud-10.0.1.tar.bz2.sha256
shasum -a 256 -c nextcloud-10.0.1.tar.bz2.sha256 < nextcloud-10.0.1.tar.bz2
rm nextcloud-10.0.1.tar.bz2.sha256
sudo tar -C /var/www -xvjf /tmp/nextcloud-10.0.1.tar.bz2
```

#### Create script to install NextCloud

```bash
cat >> /tmp/install-nextcloud.sh << "EOF"
#!/bin/bash
ocpath='/var/www/nextcloud'
htuser='www-data'
htgroup='www-data'
rootuser='root'

printf "Creating possible missing Directories\n"
mkdir -p $ocpath/data
mkdir -p $ocpath/assets
mkdir -p $ocpath/updater

printf "chmod Files and Directories\n"
find ${ocpath}/ -type f -print0 | xargs -0 chmod 0640
find ${ocpath}/ -type d -print0 | xargs -0 chmod 0750
chmod 755 ${ocpath}

printf "chown Directories\n"
chown -R ${rootuser}:${htgroup} ${ocpath}/
chown -R ${htuser}:${htgroup} ${ocpath}/apps/
chown -R ${htuser}:${htgroup} ${ocpath}/assets/
chown -R ${htuser}:${htgroup} ${ocpath}/config/
chown -R ${htuser}:${htgroup} ${ocpath}/data/
chown -R ${htuser}:${htgroup} ${ocpath}/themes/
chown -R ${htuser}:${htgroup} ${ocpath}/updater/

chmod +x ${ocpath}/occ

printf "chmod/chown .htaccess\n"
if [ -f ${ocpath}/.htaccess ]
 then
  chmod 0644 ${ocpath}/.htaccess
  chown ${rootuser}:${htgroup} ${ocpath}/.htaccess
fi
if [ -f ${ocpath}/data/.htaccess ]
 then
  chmod 0644 ${ocpath}/data/.htaccess
  chown ${rootuser}:${htgroup} ${ocpath}/data/.htaccess
fi
EOF
```

#### Run install script

```bash
$
sudo bash /tmp/install-nextcloud.sh
```

#### Enable Virtual Host

```
sudo cp /etc/apache2/sites-available/000-default.conf /etc/apache2/sites-available/000-default.conf.backup
echo "" | sudo tee /etc/apache2/sites-available/000-default.conf > /dev/null
sudo touch /etc/apache2/sites-available/000-default.conf
sudo vim /etc/apache2/sites-available/000-default.conf
```

+++

```xml
<VirtualHost *:80>
    ServerAdmin webmaster@localhost
    DocumentRoot /var/www/nextcloud

    <Directory /var/www/nextcloud/>
        Options Indexes FollowSymLinks
        AllowOverride All
        Require all granted
    </Directory>

     <IfModule mod_dav.c>
        Dav off
    </IfModule>

    ErrorLog ${APACHE_LOG_DIR}/error.log
    CustomLog ${APACHE_LOG_DIR}/access.log combined
    SetEnv HOME /var/www/nextcloud
    SetEnv HTTP_HOME /var/www/nextcloud
</VirtualHost>
```

#### Check permissions and restart apache

```bash
$ sudo chown -R www-data:www-data /var/www/nextcloud
$ sudo service apache2 reload
```


#### Create script to remove MariaDB

```bash
cat >> /tmp/remove-mariadb.sh << "EOF"
sudo systemctl stop mysql
sudo apt -y remove --purge mysql-server mysql-client mysql-common
sudo apt -y autoremove
sudo apt -y autoclean
sudo rm -rf /var/lib/mysql/
sudo rm -rf /etc/mysql/
EOF
```

#### Remove MariaDB

```
$
sudo bash /tmp/remove-mariadb.sh
```

#### Create script to install MariaDB

```bash
cat >> /tmp/install-mariadb.sh << "EOF"
sudo apt -y install php7.0-mysql mariadb-server mariadb-client
sudo mysql_secure_installation
sudo service mysql reload
sudo service mysql status
sudo apt -y install php-gettext phpmyadmin
EOF
```

#### Install MariaDB

```
$
sudo bash /tmp/install-mariadb.sh
```

#### Grant permissions

```
$
sudo mysql -u root -pspicaclearerie
```

```mysql
GRANT ALL ON root.* to 'root'@'localhost' IDENTIFIED BY 'spicaclearerie';
CREATE DATABASE nextcloud;
GRANT ALL ON nextcloud.* to 'nextcloud'@'localhost' IDENTIFIED BY 'spicaclearerie';
FLUSH PRIVILEGES;
EXIT;

```

#### NextClund Config

- Go to URL
- Database: ```nextcloud```
- User: ```nextcloud```
- Pass: ```spicaclearerie```
