#!/bin/bash
filename=$(date +'%Y-%m-%d')-error.log
echo $filename
chimp --ddp=http://localhost:3000 --watch | grep -e "still not existing after 50000ms|Error: An element could not be located" -A 5 -B 5 > $filename
