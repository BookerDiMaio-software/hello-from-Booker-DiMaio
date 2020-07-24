#!/bin/bash

echo "Deleting java-kubernetes-example deployment..."
kubectl delete deployment java-kubernetes-example

echo "Deleting java-kubernetes-example service..."
kubectl delete service java-kubernetes-example

if [ -f "tunnel.pid" ]; then
  echo "Stopping Minikube tunnel..."
  kill -- -"$(ps -o pgid= "$(cat "tunnel.pid")" | grep -o [0-9]*)"
  rm "tunnel.pid"
fi

echo "Unlinking Kubernetes to local Docker images..."
eval "$(minikube docker-env -u)"
