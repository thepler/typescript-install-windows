#!/usr/bin/env bash

set -x
set -e

wget --quiet https://nodejs.org/dist/v10.15.3/node-v10.15.3-win-x64.zip
unzip -q node-v10.15.3-win-x64.zip
chmod +x node-v10.15.3-win-x64/npm node-v10.15.3-win-x64/node.exe
chmod +x node-v10.15.3-win-x64/node_modules/npm/bin/*
export PATH="$PATH:$(pwd)/node-v10.15.3-win-x64/node_modules/npm/bin"
export PATH="$PATH:$(pwd)/node-v10.15.3-win-x64"
which npm
which node
npm install npm -g
which npm
npm install node -g
which node
npm install typescript -g
which tsc

