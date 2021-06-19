#!/bin/sh

#Files=$(find static content -type f -iname '*'.jpg -o -iname '*'.png| xargs sed -e 's/.png//')

#for File in $Files
#do
#    echo $File
#    echo cwebp -lossless -metadata icc -o $Files".webp" $Files".png"
#    printf "\n----------------\n\n"
#done


find static content -name "*.png"
echo cwebp -lossless -metadata icc -o content/about/ishibashi_ryuhei.webp content/about/ishibashi_ryuhei.png
