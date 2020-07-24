#!/bin/bash

set -e

echo "Deleting java-kubernetes-example deployment..."
kubectl delete deployment java-kubernetes-example

echo "Deleting java-kubernetes-example service..."
kubectl delete service java-kubernetes-example

if [ -f "tunnel.pid" ]; then
  echo "Stopping Minikube tunnel..."
  kill "$(cat "tunnel.pid")"
  rm "tunnel.pid"
fi

echo "Unlinking Kubernetes to local Docker images..."
eval "$(minikube docker-env -u)"
