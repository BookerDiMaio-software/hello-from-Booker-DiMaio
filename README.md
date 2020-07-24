# Kubernetes Demo

The following shows a simple Java Springboot web application that can be run locally in Kubenetes.

## Running ##

With Kubernetes running locally via Minikube, run the following to start this demo:
```
kubectl apply -f deployment.yml
minikube tunnel
```
Then navigate to http://localhost:8080

## Verifying ##

The following can be run to see the resources running in Kubernetes.

```
kubectl get deployments
kubectl get pods
kubectl get services
```

