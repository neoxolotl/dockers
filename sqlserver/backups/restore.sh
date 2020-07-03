sudo docker exec -it sqlserver_sql.data_1 /opt/mssql-tools/bin/sqlcmd -S localhost \
   -U SA -P 'Pass02!2' \
   -Q 'RESTORE FILELISTONLY FROM DISK = "/var/opt/mssql/backup/database.bak"' \
   | tr -s ' ' | cut -d ' ' -f 1-2

