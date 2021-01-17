#!/bin/bash

Usage () {
   echo "Usage $0 <repertoire> <ancienne extension> <nouvelle extension>"
   exit 1
}

if [ $# -ne 3 ]; then
   Usage
fi

if [ ! -d ${1} ]; then
   echo "Le répertoire ${1} n'existe pas"
   Usage
fi

ls -1 ${1}/*${2} 2> /dev/null 1>&2
if [ $? -gt 0 ]; then
   echo "Erreur: il n'y a aucun fichier avec l'extension ${2}"
   Usage
fi

ls -1 ${1}/*${2}

for fic in ${1}/*${2}
do
    if [ -f $fic ];then
        echo "mv ${fic} ${1}/$( basename -s${2} ${fic} )${3}"
        mv ${fic} ${1}/$( basename -s${2} ${fic} )${3}
    fi
done

