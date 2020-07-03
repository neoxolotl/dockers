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

rm -rf /home/fsosa/test-publish-test/
git clone git@www.gitlab.sosafernando.com:sosafernando/test-publish-test.git




rm -rf /home/fsosa/nginx_certificados/www3
mv /home/fsosa/test-publish-test/ /home/fsosa/nginx_certificados/www3

cd /home/fsosa/nginx_certificados
docker-compose stop
docker-compose up -d





exit 0;

