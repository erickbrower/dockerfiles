/usr/sbin/mysqld --user=root &
sleep 5
echo "GRANT ALL ON *.* TO root@'%' IDENTIFIED BY '' WITH GRANT OPTION; FLUSH PRIVILEGES" | mysql
