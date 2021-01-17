#!/bin/sh

echo "Boucle sur la saisi d'un user"
echo "Affichage des groupes du user"
echo "Faire un contrôle+C pour terminer"

while echo -n "User: " && read util
do
   # grep "^$util:" /etc/passwd 1> /dev/null
   res=$(grep "^$util:" /etc/passwd 1> /dev/null )
   if [ $? -eq 0 ]; then
      res=$(grep "^$util:" /etc/passwd )
      numgpp=$( echo $res | cut -d':' -f4 )
      # echo $numgpp
      grep "^[a-z]*:[a-z]*:${numgpp}:" /etc/group | cut -d':' -f1
      grep "\(,${util},\|,${util}$\|:${util}$\|^${util}:\)" /etc/group | cut -d':' -f1 | sort
   else
      echo "$Util n'existe pas"
   fi
done

