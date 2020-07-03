-----------------------------------------------
oo# dockers

Dockers Vs 
==========

Contiene las imagenes de los dockers usadas para crear infraestructura de servidores. 

Estos archivos levantan diferentes servidores para varios propositos: 

angular:
=======

  
correo:
======

Servidor de correo 

 
gitea  
=======

Servidor versionador Gitea no permite integracion continua en todo caso hay que fusionar con drone.io

gitlab
=======

Servidor gitlab

kanboard  
=========

Gestor de proyectos basado en tiempos, no responde a los plugins. 

nextcloud  
==========

Servidor de documentación, permite compartir archivos. 

nginx3  
========

Server nginx. 

nginx_certificados  
=====================

Server completo nginx, mas certificados lets-encrypt autorevonables. 
Tambien se encuentra un docker-compose.yaml2 el cual cuenta con multiples dominios en este caso utilizado para los siguientes dominios: 

https://testing.sosafernando.com/ 
https://testing-pan.sosafernando.com/


nginxv2  
=======

Otro Nginx. 

portainer  
=========

Server portainer para chequear los dockers corre en el puerto 9000

sqlserver
========

Servidor sql-server que funciona bajo docker y linux. 
