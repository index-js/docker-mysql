#!/bin/sh

[[ "$MYSQL_ROOT_PASSWORD" ]] && {

cat > /tmpfile << EOF
  DROP DATABASE test;
  FLUSH PRIVILEGES;
  GRANT ALL ON *.* TO 'root'@'localhost' IDENTIFIED BY '$MYSQL_ROOT_PASSWORD' WITH GRANT OPTION;
  GRANT ALL ON *.* TO 'root'@'127.0.0.1' IDENTIFIED BY '$MYSQL_ROOT_PASSWORD' WITH GRANT OPTION;
  GRANT ALL ON *.* TO 'root'@'::1' IDENTIFIED BY '$MYSQL_ROOT_PASSWORD' WITH GRANT OPTION;
  GRANT ALL ON *.* TO 'root'@'%' IDENTIFIED BY '$MYSQL_ROOT_PASSWORD' WITH GRANT OPTION;
  DELETE FROM mysql.user WHERE User='';
EOF

  mysqld --user=root --bootstrap < /tmpfile
  rm -rf /tmpfile
}

mysqld_safe --user=root
