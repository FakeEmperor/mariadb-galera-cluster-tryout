#!/bin/sh
docker run \
  --name mariadb-1 \
  -d \
  -v /opt/local/etc/mysql.conf.d:/etc/mysql/conf.d \
  -v /mnt/data/mariadb:/var/lib/mysql \
  -p 3306:3306 \
  -p 4567:4567/udp \
  -p 4567-4568:4567-4568 \
  -p 4444:4444 \
  mariadb:10.1 \
  --wsrep_node_address=$(ip -4 addr ls eth1 | awk '/inet / {print $2}' | cut -d"/" -f1)