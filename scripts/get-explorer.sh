#!/bin/bash

EXPLORER_DIR=./explorer
INITIAL_EXPLORER_DIR=etherchain-light

if [ -d "$EXPLORER_DIR" ]; then
	echo "$EXPLORER_DIR exists. Continue without cloning..."
	exit 0
fi

git clone https://github.com/gobitfly/etherchain-light --recursive

mv $INITIAL_EXPLORER_DIR $EXPLORER_DIR
cd $EXPLORER_DIR
npm install
cp ../etherchain-light-config.js ./config.js

cd -

exit 0