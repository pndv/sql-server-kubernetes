#!/bin/sh

if [ -z "$1" ] && [ "$1" -eq 1 ]
then
  echo "Deleting minikube cluster"
  minikube delete
fi


minikube start

kubectl apply -f secret.yaml,persistent-volume-claim.yaml,deployment.yaml,service.yaml

minikube tunnel