#!/bin/sh

surtrois=3

while [ $# -ge 1 ];do
   echo $1
   shift $surtrois 2> /dev/null
done
