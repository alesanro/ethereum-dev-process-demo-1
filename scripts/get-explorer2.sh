#!/bin/bash

TMP_EXPLORER_DIR=./tmp-explorer
EXPLORER_DIR=./explorer2

if [ -d "$EXPLORER_DIR" ]; then
	echo "$EXPLORER_DIR exists. Continue without cloning..."
	exit 0
fi

mkdir $TMP_EXPLORER_DIR
cd $TMP_EXPLORER_DIR

git clone https://github.com/carsenk/explorer

mv explorer $EXPLORER_DIR
mv -f $EXPLORER_DIR ../$EXPLORER_DIR

cd ../$EXPLORER_DIR

npm install
bower install

cp ../carsenk-explorer-app.js ./app/app.js

cd ..
rm -rf $TMP_EXPLORER_DIR

exit 0