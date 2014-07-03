apt-get remove --purge -y mysql* && apt-get autoremove -y
apt-key adv --keyserver keys.gnupg.net --recv-keys 1C4CBDCDCD2EFD2A
echo "deb http://repo.percona.com/apt saucy main" >> /etc/apt/sources.list
echo "deb-src http://repo.percona.com/apt saucy main" >> /etc/apt/sources.list
cp /opt/configs/percona/v5.6/00percona.pref /etc/apt/preferences.d/00percona.pref
apt-get update -qq
DEBIAN_FRONTEND=noninteractive apt-get install -y --force-yes percona-server-server-5.6 percona-server-client-5.6
apt-get install -f -y
cp /opt/configs/percona/v5.6/my.cnf /etc/mysql/my.cnf

/usr/sbin/mysqld --user=root &
sleep 5
echo "GRANT ALL ON *.* TO root@'%' IDENTIFIED BY '' WITH GRANT OPTION; FLUSH PRIVILEGES" | mysql
