#!/bin/sh


Usage () {
   echo "Usage $0 <fichier bibliothèque> <auteur>"
   exit 1
}

if [ $# -ne 2 ]; then
   Usage;
fi

fic=$1
aut=$2

if [ ! -f "$fic" ]; then
   echo "Le fichier bibliothèque ${fic} n'a pas été trouvé"
   Usage;
fi

grep -i "\( ${aut} & \| ${aut} @\)" "$fic" | cut -d'@' -f2
