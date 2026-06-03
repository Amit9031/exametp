from node:latest
copy . .
workdir /app
run npm install
cmd ["node","app.js"]