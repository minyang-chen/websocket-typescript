
# server
npm install -g typescript
npm install @types/node@16 --save-dev
npm install socket.io@4

npm install concurrently@7 --save-dev
npm install -g nodemon@2 --save-dev


# client
npm install socket.io-client@4
npm install @types/socket.io-client@1 --save-dev


#BOOTstrap
npm install jquery@3
npm install @types/jquery@3 --save-dev

npm install bootstrap@4
npm install @types/bootstrap@4 --save-dev

# Eslint
npm init @eslint/config
npm init @eslint/config -- --config eslint-config-semistandard
npm install --save-dev eslint

touch .eslintrc.js

#// .eslintrc.js example
module.exports = {
  "env": {
      "browser": true,
      "es2021": true
  },
  "extends": "eslint:recommended",
  "parserOptions": {
      "ecmaVersion": "latest",
      "sourceType": "module"
  },
}

# Lint code using the ESLint CLI:
npx eslint project-dir/ file1.js
