#!/bin/sh

chmod 775 mkarbo_kill.sh

rm -rf Script
rm -rf Temporaire
rm -rf Projet

tree Script && tree Temporaire && tree Projet

exit
