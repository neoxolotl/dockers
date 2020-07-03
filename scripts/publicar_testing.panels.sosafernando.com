##!/bin/sh
#
## If started as root, then re-start as user "fsosa":
#if [ "$(id -u)" -eq 0 ]; then
#    exec sudo -H -u fsosa $0 "$@"
#    echo "This is never reached.";
#fi
#
#echo "This runs as user $(id -un)";
# prints "fsosa"
#

rm -rf /home/fsosa/panel-publish-test
git clone git@www.gitlab.sosafernando.com.com:sosafernando/panel-publish-test.git 


rm -rf /home/fsosa/nginx_certificados/www2
mv /home/fsosa/panel-publish-test /home/fsosa/nginx_certificados/www2

cd /home/fsosa/nginx_certificados
docker-compose stop
docker-compose up -d





exit 0;
