#!/usr/bin/env bash

set -x
set -e

wget --quiet https://nodejs.org/dist/v10.15.3/node-v10.15.3-win-x64.zip
unzip -q node-v10.15.3-win-x64.zip
cd node-v10.15.3-win-x64
chmod +x npm* node* npx*
./npm install typescript -g
./npm install ts-node -g
set +x
echo "add this to your PATH:"
pwd

