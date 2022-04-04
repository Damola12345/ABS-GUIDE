#!/bin/bash

docker build -t abs-guide .
docker run -it -p 8081:80 abs-guide