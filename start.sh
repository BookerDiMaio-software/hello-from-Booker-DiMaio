#!/bin/bash

set -e

echo "Testing..."
./mvnw verify

echo
echo "Packaging..."
./mvnw -DskipTests package

echo
echo "Building local Docker image..."
./mvnw -DskipTests com.google.cloud.tools:jib-maven-plugin:dockerBuild -Dimage=java-kubernetes-example:v1

echo
echo "Deploying to Kubernetes..."
kubectl apply -f deployment.yml

echo
echo "Starting Minikube tunnel..."
minikube tunnel > /dev/null &
echo $! > tunnel.pid

sleep 15

echo
echo "The example is ready! Please navigate to http://localhost:8080"