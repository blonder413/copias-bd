# Add the backup dir location, MySQL root password, MySQL and mysqldump location
DATE=$(date +%Y%m%d)
BACKUP_DIR="/home/blonder413/public_html/sql/blog"
MYSQL_USER="cursos"
MYSQL_PASSWORD="Cursos.Blonder413"
# MYSQL=/u01/mysql/bin/mysql
# MYSQLDUMP=/u01/mysql/bin/mysqldump
 
# To create a new directory in the backup directory location based on the date
mkdir -p $BACKUP_DIR/$DATE
 
# To get a list of databases
databases=`mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -e "SHOW DATABASES;" | grep -Ev "(Database|information_schema)"`
 
# To dump each database in a separate file
for db in $databases; do
echo $db
mysqldump --force --opt --skip-lock-tables --user=$MYSQL_USER -p$MYSQL_PASSWORD --databases $db | gzip > "$BACKUP_DIR/$DATE/$db.sql.gz"
done
 
# Delete the files older than 10 days
find $BACKUP_DIR/* -mtime +10 -exec rm {} \;