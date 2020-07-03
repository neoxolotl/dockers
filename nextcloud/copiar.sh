# give docker-compose run a nonsense command to keep it from quitting
docker-compose run -d <0ffac8dbb3d4> sleep 1000
# use docker cp to move files to the container
docker cp /config/config.php "$(docker-compose ps -q <0ffac8dbb3d4>)":/home/fsosa
# now run the actual command
docker-compose run <0ffac8dbb3d4> whatever-command

