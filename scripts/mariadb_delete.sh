#!/bin/sh
docker rm $(docker stop $(docker ps -a -q --filter name=mariadb --format="{{.ID}}")) ; true