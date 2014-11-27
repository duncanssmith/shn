#!/bin/bash

IMGPATH=/Users/duncansmith/Sites/shn.local/public/media/images

cd $IMGPATH

ls -la 64 | wc
ls -la 120 | wc
ls -la 160 | wc
ls -la 320 | wc
ls -la 640 | wc

find . -name sh_0277.jpg -print
find . -name sh_0278.jpg -print
