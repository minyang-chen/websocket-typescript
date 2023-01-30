# nvm
# bash -i -c 'nvm install --lts'

# Clean Up 
rm -rf node_modules
rm -f package-lock.json
# 👇️ clean npm cache
npm cache clean --force

# ✅ Install ts-node globally
sudo npm install -g nodemon@2 --save-dev
sudo npm install -g typescript ts-node 

# ✅ Create a symbolic link from the global package
# to node_modules/ of current folder
#npm link ts-node
#npm link typescript

# project only
npm install --save-dev typescript ts-node 
npm install --save-dev eslint @typescript-eslint/parser @typescript-eslint/eslint-plugin
npm install ts-node @types/node typescript

#npm install -g prettier
# npm install typescript-tslint-plugin
# eslint --init 
# npm init @eslint/config
# npm install concurrently@7 --save-dev
# npm install express@4
# npm install @types/express@4 --save-dev
# npm install socket.io-client@4
# npm install @types/socket.io-client@1 --save-dev

# project
npm install

# git 
git config --global user.name "myc"
git config --global user.email "myc@example.com"
git config --global color.ui auto

