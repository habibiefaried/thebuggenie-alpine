docker stop thebuggenie && docker rm thebuggenie
docker build -t thebuggenie-image .
docker run --name thebuggenie -h thebuggenie --restart=always -d thebuggenie-image
