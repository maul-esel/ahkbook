#!/bin/sh

# Location to save ebook
OPATH=`pwd`

# Custom dir to build in
BPATH='/tmp/ahkbook_build'
mkdir $BPATH
cd $BPATH

# clone from GitHub using the read-only uri
# this is the official repo
git clone git://github.com/maul-esel/ahkbook.git
cd ahkbook

jekyll --url '..'
cd _site

zip -r $OPATH/contents.zip *


cd $OPATH
rm -R -f $BPATH

