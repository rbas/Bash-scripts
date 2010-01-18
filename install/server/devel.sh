# /bin/bash
aptitude install apache2 libapache2-mod-php5

aptitude install php5 php5-cgi php5-cli php5-curl php5-imagick php-gettext php5-tidy php5-xcache php5-xmlrpc php5-mcrypt php5-gd

# pro devel stroje na stable nedoporucuju
aptitude install php5-xdebug  php5-xsl 
aptitude install libtool libssl-dev shtool php5-dev php-pear

aptitude install libapache2-svn

echo "Je potreba nainstalovat curl-dev"
aptitude install curl
aptitude install libcurl-dev
aptitude install libcurl4-gnutls-dev
aptitude install libevent-dev
aptitude install libmagic-dev


echo "Instaluju postgresql"
aptitude install postgresql
aptitude install php5-pgsql

echo "Instaluju rozsireni pecl http"
pecl install pecl_http
# Po instalaci pecl_http je potreba ho pridat mezi nacitane moduly do php
echo "extension=http.so" > /etc/php5/conf.d/pecl_http.ini
