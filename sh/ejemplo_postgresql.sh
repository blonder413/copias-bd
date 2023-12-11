PGPASSWORD="MiPassword" pg_dump -h 192.168.1.20  -p 5786 -U postgres -Fc postgres > "/home/user/copias/mibd.sql"
/bin/mv /home/user/copias/mibd.sql /home/user/copias/mibd`date +%d-%m-%Y_%H_%M_%S`.sql


/bin/chmod -R 755 /home/user/copias/*
/bin/tar -zcvf /home/user/copias/bkmibd`date +%d-%m-%Y_%H_%M_%S`.tar.gz /home/user/copias/*
/bin/rm -R /home/user/copias/*
