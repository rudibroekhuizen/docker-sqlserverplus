# docker-sqlserverplus


## Connect into container
```bash
docker-compose exec sqlserver bash
```

## Sqlcmd in container
```bash
sqlcmd -S localhost -U SA -P 'Strong(!)Password'
```

## Create Sakila database
```bash
wget -P /tmp https://raw.githubusercontent.com/jOOQ/sakila/main/sql-server-sakila-db/sql-server-sakila-schema.sql
```
```bash
sqlcmd -S localhost -U SA -P 'Strong(!)Password' -i /tmp/sql-server-sakila-schema.sql
```

## Insert data
```bash
wget -P /tmp https://raw.githubusercontent.com/jOOQ/sakila/main/sql-server-sakila-db/sql-server-sakila-insert-data.sql
```
```bash
sqlcmd -S localhost -U SA -P 'Strong(!)Password' -d sakila -i /tmp/sql-server-sakila-insert-data.sql
```
