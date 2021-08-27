FROM microsoft/mssql-server-linux:2019-latest

RUN apt-get update && \
apt-get install -y sudo vim curl wget unzip net-tools iputils-ping parallel jq && \
ln -s /opt/mssql-tools/bin/sqlcmd /usr/local/bin
