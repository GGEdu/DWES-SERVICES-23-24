if [ -f "/docker-entrypoint-initdb.d/db-dump/mariadb-dump.sql" ]; 
then 
    mysql -u root -p"${MARIADB_ROOT_PASSWORD}" < /docker-entrypoint-initdb.d/db-dump/mariadb-dump.sql
fi