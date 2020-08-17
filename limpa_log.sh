#!/bin/bash

#Propóo = Backup de Imagens em "/dados-top"


#START
set -x
BZIP2=/bin/bzip2

TIME=`date +%b-%d-%y`

# Este comando irádicionar a data no Nome do Arquivo de Backup.

MENOSDAY=`date --date="yesterday" +"%Y-%m-%d"`

FILENAME=server.log.$MENOSDAY

# Aqui eu defino o formato do nome do arquivo de backup.



SRCDIR=/opt/java/wildfly/standalone/

# Local Fonte - onde estãos arquivos a serem feitos backup.



DESDIR=log/

# Local Destino - onde o Backup seráalvo.



find $SRCDIR$DESDIR -type f -name '*.bz2' -mtime +30 -exec rm -f {} \;



$BZIP2 $SRCDIR$DESDIR$FILENAME
set +x


#END
