# Kubernetes Demo

This demo is by team ThanOS at Booker DiMaio. It shows a simple Java Springboot
web application that can be run locally in Kubenetes via Minikube.

### Prerequisites ###

1. You must have [Docker](https://docs.docker.com/get-docker/) and
[Minikube](https://kubernetes.io/docs/tasks/tools/install-minikube/) installed and running locally.

2. You must link Minikube to your local Docker (see [Cleanup](#cleanup) to undo this once complete):
```
eval $(minikube -p minikube docker-env)
```

## Running the Demo ##

With Kubernetes running locally via Minikube, run the following to start this demo:
```
./start.sh
```

Once finished, you can then navigate to http://localhost:8080

## Verifying Kubernetes ##

The following can be run to see the resources running in Kubernetes.
```
kubectl get deployments
kubectl get pods
kubectl get services
```

## Cleanup

To stop and delete the Kubernetes resources created by the demo, run:
```
./stop.sh
```

To unlink Kubernetes from your local Docker, run:
```
eval $(minikube docker-env -u)
```
