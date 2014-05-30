#!/bin/bash

echo "modify time variables in quake.csv to have the POSIXct format"

FILE_path=data/quakes.csv

#T character between date and time
sed -i 's/\([0-9][0-9]\)T/\1 /g' $FILE_path
sed -i 's/\([0-9][0-9][0-9]\)Z/\1/g' $FILE_path
