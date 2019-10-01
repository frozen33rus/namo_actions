#!/bin/bash
currentComparePath=$1
tempFile=/tmp/meldFirstPath
firstComparePath=$(cat $tempFile)
if [ -z "$firstComparePath" ];
then
    echo "$currentComparePath" > "$tempFile"
else
    echo "" > "$tempFile"
    meld "$firstComparePath" "$currentComparePath"
fi