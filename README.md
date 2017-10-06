# docker-sqlserverplus


## Connect into container
docker exec -it dockersqlserverplus_db_1 sh 

## Sqlcmd in container
/opt/mssql-tools/bin/sqlcmd -S localhost -U SA -P 'Strong!Password'

## Create Sakila database
wget -P /tmp https://raw.githubusercontent.com/jOOQ/jOOQ/master/jOOQ-examples/Sakila/sql-server-sakila-db/sql-server-sakila-schema.sql
/opt/mssql-tools/bin/sqlcmd -S localhost -U SA -P 'Strong!Password' -i /tmp/sql-server-sakila-schema.sql

## Import data
wget -P /tmp https://github.com/jOOQ/jOOQ/raw/master/jOOQ-examples/Sakila/sql-server-sakila-db/sql-server-sakila-insert-data.sql
/opt/mssql-tools/bin/sqlcmd -S localhost -U SA -P 'Strong!Password' -d sakila -i /tmp/sql-server-sakila-insert-data.sql
