#!/bin/bash

echo -n 'Afficher tout les sous-répertoires du répertoire courant :'

read rep
cd $rep

for inRep in $(ls - */)
do
	echo $inRep
done
