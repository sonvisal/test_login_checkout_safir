#!/bin/bash
filename=$(date +'%Y-%m-%d-%T')-error.log
echo $filename
export  ROOT_URL=http://localhost:3000

chimp --ddp=http://localhost:3000/ --watch >$filename
#chimp --watch --ddp=$ROOT_URL --path=test_login_checkout_safir
echo "last file"
echo $filename
cat  $filename | grep -e "Error" -A 5 -B 2 > error.log