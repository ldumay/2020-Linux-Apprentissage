#!/bin/bash

for rep in *
do
    if [[ -d "${rep}" ]]; then
       echo $rep
    fi
done
