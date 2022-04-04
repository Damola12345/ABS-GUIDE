#!/bin/bash

cd /home/dammytestcloud/Downloads/ABS-GUIDE/k8s

NAMESPACE='abs-guide'

kubectl create namespace $NAMESPACE
kubectl apply -n $NAMESPACE -f deployment.yml
kubectl apply -n $NAMESPACE -f service.yml
kubectl get all -n $NAMESPACE
minikube service -n $NAMESPACE abs-guide --url
