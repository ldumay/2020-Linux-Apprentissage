#!/bin/bash

Usage () {
   echo "Usage $0 <repertoire> <+r|-r|+w|-w> <extention>"
   echo "<extention> : extention des fichiers pour lesquels"
   echo "les droits d'accès seront modifiés"
   exit 1
}

if [ $# -ne 3 ]; then
   Usage
fi

if [ ! -d "${1}" ]; then
   echo "Le répertoire \"${1}\" n'existe pas"
   Usage
fi

case $2 in
  -r|+r|-w|+w) ;;
  *) echo "L'option ${2} n'est pas autorisée" ; Usage
esac

chmod g$2 "${1}"/*${3}
