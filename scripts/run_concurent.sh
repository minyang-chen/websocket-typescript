#npm install concurrently@7 --save-dev
#"dev" : "concurrently -k \"tsc -p ./src/server -w\" \"nodemon ./dist/server/server.js\"",

#compile
#tsc src/server/server.ts --outDir dist/server/ --esModuleInterop true
#tsc src/client/client.ts --outDir dist/client/ --esModuleInterop true

#run
#node dist/server/server.js
#tsc -p src/server
#npx nodemon dist/server/server.js

#tsc -p ./src/server -w
#tsc -p ./src/client -w
#nodemon ./dist/server/server.js
npm run dev
