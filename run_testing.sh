#!/bin/bash
filename=$(date +'%Y-%m-%d-%T')-error.log
echo $filename
export  ROOT_URL=http://localhost:3000

chimp --ddp=http://localhost:3000/ --watch | grep -e "Error|RuntimeError|still not existing after 50000ms|Error: An element could not be located" > $filename
#chimp --watch --ddp=$ROOT_URL --path=test_login_checkout_safir
