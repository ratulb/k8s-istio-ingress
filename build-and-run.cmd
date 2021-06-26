#!/usr/bin/env bash

docker build -t hello-world-python .

docker stop hello-py &>/dev/null

docker rm hello-py &>/dev/null

docker run -d -p3333:3333 --name hello-py hello-world-python

#docker tag hello-world-python ratulb/hello-py-pod:0.0.1
#docker push ratulb/hello-py-pod:0.0.1
#curl -s -I -HHost:python.org "http://34.93.10.13:30749/index"
