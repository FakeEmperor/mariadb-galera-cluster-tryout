#!/bin/sh
docker stop $(docker ps -a -q --filter name=mariadb --format="{{.ID}}")