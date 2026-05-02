#!/bin/bash

docker stop devops-app || true
docker rm devops-app || true

docker build -t devops-app .

docker run -d -p 5000:5000 --name devops-app devops-app