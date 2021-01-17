#!/bin/bash

#Ceci est un commentaire.
echo "Hello World !"
echo ""

#Afficher toutes les lettres de l'alphabet
echo {a..z}
echo ""

#Récupération de paramètre
#---
#$1=> récupère le 1er paramètre insérer dans la commande
#$2=> récupère le 2e paramtère insérer dans la commande
echo "par 1: $1"
echo "par 2: $2"
echo "par 3: $3"
echo "par 4: $4"
echo "par 5: $5"
echo ""

#Boucle For - Vérification des paramtères
echo "Vérifions vos 5 paramètres"
for [ par in $# ];do
	echo $#
done
