#!/bin/bash

cd /home/dammytestcloud/Downloads/ABS-GUIDE
echo "build the docker image"

docker build -t abs-guide .

echo "Deploying the updated container"

docker run -it -p 8081:80 abs-guide
