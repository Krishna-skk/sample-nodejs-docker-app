# sample-nodejs-docker-app
Sample Node.js Docker Hello Application
for multistage application deployement through dockerfile

sudo apt update

git clone https://github.com/Krishna-skk/sample-nodejs-docker-app.git

cd sample-nodejs-docker-app

docker build --target development -t myapp-dev .

docker build --target test -t myapp-test .

docker build --target production -t myapp-prod .

docker run --name container-prod -d -p 1000:8080 myapp-prod

docker run --name container-test -d -p 1001:8080 myapp-test

docker run --name container-dev -d -p 1002:8080 myapp-dev

then go to your management console open ports 1000,1001,1002

access them localhost:1000, localhost:1001, localhost:1002
