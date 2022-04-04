#!/bin/bash

NAMESPACE='abs-guide'

kubectl create namespace $NAMESPACE 
kubectl apply -n $NAMESPACE -f deployment.yaml
kubectl apply -n $NAMESPACE -f service.yaml
kubectl get all -n $NAMESPACE