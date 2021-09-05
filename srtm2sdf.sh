#!/bin/bash
echo Archivos en srtm-data:
ls srtm-data
echo Coloque la letra y numero del archivo SRTM que desea convertir srtm-data/S{ }/{ }
read PATR

for f in srtm-data/S$PATR/$PATR/*.hgt; do
    echo "Convirtiendo $f"
    srtm2sdf $f
    mv -v -- *.sdf sdf-data-converted/
done
