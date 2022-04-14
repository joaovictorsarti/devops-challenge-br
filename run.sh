#!/bin/bash

#Build the Docker image and push it to the registry automatically

set -ex

IMAGE="devops-challenge"

TAG="1.0"

REGISTRY="localhost"

PORT="2424"

#Build Image

docker build -t ${IMAGE}:${TAG} .

docker tag ${IMAGE}:${TAG} ${REGISTRY}:2424/${IMAGE}

docker push ${REGISTRY}:${PORT}/${IMAGE}

#Apply k8s
#kubectl apply -f ns.yaml
#kubectl apply -f cm.yaml
#kubectl apply -f deploy.yaml
#kubectl apply -f svc.yaml
#kubectl apply -f ing.yaml

#Validate that the application is running by accessing the following endpoints
#result1=$(curl -X GET --header "Accept: */*" "http://localhost:8080/info")
#result2=$(curl -X GET --header "Accept: */*" "http://localhost:8080/code")
#result3=$(curl -X GET --header "Accept: */*" "http://localhost:8080/stat")

#echo "Response from server"
#echo $result1
#echo $result2
#echo $result3
#exit

