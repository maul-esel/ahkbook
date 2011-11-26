#!/bin/sh

# Location to save ebook
OPATH=`pwd`

# Custom dir to build in
BPATH='/tmp/ahkbook_build'
mkdir $BPATH
cd $BPATH

# clone from parent directory
git clone $OPATH/.. ahkbook
cd ahkbook

jekyll --url '..'
cd _site

sed -i "s/href='\.\.\/css\/\([^\n]\+\)\.css'/href='css\/\1\.css'/g" index.html

zip -r $OPATH/ahkbook.zip *


cd $OPATH
rm -R -f $BPATH
