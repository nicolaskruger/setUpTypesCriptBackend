#!/bin/bash
npm init -y

val=$(cat package.json)
search='"scripts": {'
replace='"scripts": {
    "start": "tsc && node dist/server.js",
    "dev": "ts-node-dev --respawn --transpile-only src/server.ts",'
echo "${val/$search/$replace}">package.json
npm install typescript --save-dev
npm install express 
npm install @types/express --save-dev

#tsc --init

npm install ts-node-dev --save-dev

npm install body-parser
npm install @types/body-parser --save-dev
 
rm -r -f ./.git
rm README.md
rm setUp.bash