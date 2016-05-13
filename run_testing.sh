#!/bin/bash
chimp --ddp=http://localhost:3000 --watch | grep -w "still not existing after 50000ms\| Error: An element could not be located" -A 5 -B 5 > error_image.log