#!/bin/sh

chmod 775 mkarbo.sh

#mkdir -p Script/{Perl,Shell,Python}	---non fonctionnel
mkdir -p Script/Perl
mkdir -p Script/Shell
mkdir -p Script/Python

#mkdir -p Script/Shell/{Sh,Ksh,Bash}	---non fonctionnel
mkdir -p Script/Shell/Sh
mkdir -p Script/Shell/Ksh
mkdir -p Script/Shell/Bash

#mkdir -p Temporaire/{2019,2020}		---non fonctionnel
#mkdir -p Temporaire/2019/{1-semestre,2-semestre}	---non fonctionnel
mkdir -p Temporaire/2019/1-semestre
mkdir -p Temporaire/2019/2-semestre
#mkdir -p Temporaire/2020/{1-semestre,2-semestre}	---non fonctionnel
mkdir -p Temporaire/2020/1-semestre
mkdir -p Temporaire/2020/2-semestre

#mkdir -p Projet/{Projet-L3,Projet-M1,Projet-M2}		---non fonctionnel
mkdir -p Projet/Projet-L3
mkdir -p Projet/Projet-M1
mkdir -p Projet/Projet-M2

touch Projet/Projet-L3/L3.txt

cat Projet/Projet-L3/L3.txt > Projet/Projet-M1/M1.txt
cat Projet/Projet-L3/L3.txt >  Projet/Projet-M2/M2.txt

tree Script && tree Temporaire && tree Projet

exit
