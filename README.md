# docker-sqlserverplus


## Connect into container
```bash
docker-compose exec sqlserver bash
```

## Sqlcmd in container
```bash
/opt/mssql-tools/bin/sqlcmd -S localhost -U SA -P 'Strong!Password'
```

## Create Sakila database
```bash
wget -P /tmp https://raw.githubusercontent.com/jOOQ/jOOQ/master/jOOQ-examples/Sakila/sql-server-sakila-db/sql-server-sakila-schema.sql
/opt/mssql-tools/bin/sqlcmd -S localhost -U SA -P 'Strong!Password' -i /tmp/sql-server-sakila-schema.sql
```

## Import data
```bash
cd /scripts/sakila
/opt/mssql-tools/bin/sqlcmd -S localhost -U SA -P 'Strong!Password' -d sakila -i *.sql
```
