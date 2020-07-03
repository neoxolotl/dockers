sudo docker exec -it sqlserver_sql.data_1 /opt/mssql-tools/bin/sqlcmd \
   -S localhost -U SA -P 'Pass02!2' \
   -Q "BACKUP DATABASE [Sancor] TO DISK = N'/var/opt/mssql/backup/basedatos.bak' WITH NOFORMAT, NOINIT, NAME = 'basedatos-full', SKIP, NOREWIND, NOUNLOAD, STATS = 10"


cd ~
sudo docker cp sqlserver_sql.data_1:/var/opt/mssql/backup/basedatos.bak	basedatos.bak
ls -l san*
