#!/bin/bash

UI_DIR=./parity-ui

if [ -d "$UI_DIR" ]; then
	echo "$EXPLORER_DIR exists. Continue without cloning..."
	exit 0
fi

curl https://codeload.github.com/parity-js/shell/tar.gz/v0.2.1 --output parity-ui.tar.gz

tar xzf parity-ui.tar.gz
mv shell-0.2.1 $UI_DIR
rm parity-ui.tar.gz

cd $UI_DIR

npm install

cd -

exit 0
