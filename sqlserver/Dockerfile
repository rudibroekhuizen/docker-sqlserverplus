FROM mcr.microsoft.com/mssql/server:2019-latest
USER root

RUN apt-get update && \
apt-get install -y sudo vim curl wget unzip net-tools iputils-ping parallel jq && \
ln -s /opt/mssql-tools/bin/sqlcmd /usr/local/bin
