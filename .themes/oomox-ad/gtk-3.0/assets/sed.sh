#!/bin/sh
sed -i \
         -e 's/#0e0e0e/rgb(0%,0%,0%)/g' \
         -e 's/#ffffff/rgb(100%,100%,100%)/g' \
    -e 's/#0e0e0e/rgb(50%,0%,0%)/g' \
     -e 's/#83efc8/rgb(0%,50%,0%)/g' \
     -e 's/#141414/rgb(50%,0%,50%)/g' \
     -e 's/#ffffff/rgb(0%,0%,50%)/g' \
	"$@"
