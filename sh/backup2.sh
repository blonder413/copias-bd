#!/bin/bash
MYSQL_USER="cursos"
MYSQL_PASSWORD="Cursos.Blonder413"
DATE=$(date +%Y%m%d)
BACKUP_DIR="/home/blonder413/public_html/sql/blog/"
DB=blogyii2
echo $DB
mysqldump -u $MYSQL_USER -p$MYSQL_PASSWORD $DB | gzip -9 > "$BACKUP_DIR/$DB-$DATE.sql.gz"
find $BACKUP_DIR/* -mtime +5 -exec rm {} \;