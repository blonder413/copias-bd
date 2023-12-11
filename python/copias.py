#!/usr/bin/python

import datetime
import os

command = "mysqldump -h [nuestro.servidor.com_o_IP] -u [usuario] -p[password] [base_de_datos]"

# Objeto HOY
today = datetime.date.today()
# Formatea como YYYYMMDD
fecha = today.strftime("%Y%m%d")

# Fichero de salida
file = "backup_Servidor_"+fecha

command = command+" > /home/javi/backups/Servidor/"+file+".sql"

os.system(command)
