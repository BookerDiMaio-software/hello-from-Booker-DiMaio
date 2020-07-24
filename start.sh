#!/bin/bash

set -e

echo "Testing..."
./mvnw verify

echo "Packaging..."
./mvnw -DskipTests package

echo "Building local Docker image..."
./mvnw -DskipTests com.google.cloud.tools:jib-maven-plugin:dockerBuild -Dimage=java-kubernetes-example:v1

echo "Deploying to Kubernetes..."
kubectl apply -f deployment.yml

echo "Starting Minikube tunnel..."
minikube tunnel &
echo $! > tunnel.pid

echo "The example is ready! Please navigate to http://localhost:8080"