#!/bin/bash

Usage () {
   echo "Usage $0 <+r|-r|+w|-w> <extention>"
   echo "<extention> : extention des fichiers pour lesquels"
   echo "les droits d'accès seront modifiés"
   exit 1
}

if [ $# -ne 2 ]; then
   Usage
fi

case $1 in
  -r|+r|-w|+w) ;;
  *) Usage
esac

echo "chmod g$1 *${2}"
