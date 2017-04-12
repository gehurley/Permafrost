#!/bin/sh

if [ ! -d "../metadata" ]; then
  mkdir ../metadata
fi

folder=${PWD##*/}

'ls' | sed -e 's/^/data\/'"$folder"'\//' > ../metadata/metadata.csv

sed -i.bak '1i\
filename
' ../metadata/metadata.csv

sed -i.bak '2i\
'"$folder"'
' ../metadata/metadata.csv

rm ../metadata/*.bak