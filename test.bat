mysqlslap --delimiter=";" -u root -p -P 2200 --auto-generate-sql --auto-generate-sql-load-type=write  --concurrency=100 -vv --iterations=100