# sample-nodejs-docker-app
Sample Node.js Docker Hello Application
for multistage application deployement through dockerfile

sudo apt update

git clone https://github.com/Krishna-skk/sample-nodejs-docker-app.git

cd sample-nodejs-docker-app

docker build --target development -t myapp-dev .

docker build --target test -t myapp-test .

docker build --target production -t myapp-prod .
