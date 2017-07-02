#!/bin/bash
mysqlslap --delimiter=";" -u root -p -P 33060 —auto-generate-sql  --concurrency=10000