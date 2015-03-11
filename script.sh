#!/bin/bash

file="vars"

sleepTime=$(cat "$file")

while [ true ] ; do
wget -P ./ pogoda.by -q

grep strong index.html | grep '[+-][[:digit:]]*\.[[:digit:]]' | sed 's/<br.*//g' | awk  '{print $6}' | sed 's/C.*/ /g' | awk  '{print $1}'
rm index.html
sleep $sleepTime
done
