#!/bin/bash

Usage () {
   echo "Usage $0 <repertoire> <ancienne extension> <nouvelle extension>"
   exit 1
}

if [ $# -ne 3 ]; then
   Usage
fi

if [ ! -d "${1}" ]; then
   echo "Le répertoire \"${1}\" n'existe pas"
   Usage
fi

ls ${1}/*${2} 2> /dev/null
if [ $? -gt 0 ]; then
   echo "Erreur: il n'y a aucun fichier avec l'extension ${3}"
   Usage
fi

rename "s/${2}/${3}/" ${1}/*${2}
