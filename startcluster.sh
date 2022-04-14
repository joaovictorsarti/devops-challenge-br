#!/bin/bash
k3d registry create devops-challenge-registry --port 2424  
sleep 5    
k3d cluster create devops-challenge --api-port 6550 -p "8080:80@loadbalancer" --agents 2 --registry-use k3d-devops-challenge-registry:2424
sleep 5     
kubectl config use-context k3d-devops-challenge      
kubectl cluster-info
