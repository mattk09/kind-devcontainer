# kind-devcontainer

[Kind](https://kind.sigs.k8s.io/docs/user/quick-start/) quick start.

## Basic steps

- Create a cluster and wait for control plane to be created (already done in post-create.sh)
  - `kind create cluster --config ./cluster-config.yaml --wait 5m --name dev-cluster`

## Other commands

```bash
kind get clusters
kind delete cluster --name dev-cluster

# Get cluster info and nodes
kubectl cluster-info
kubectl get node

# Exec into a node
docker exec -it dev-cluster-control-plane bash # run `crictl images`
```

## Getting Started

```bash
kubectl apply -f ./pods/hello-world.yaml
kubectl get pods
kubectl logs hello-world-app-5664469676-x4wtd # this name changes based on the output of the above command
kubectl delete -f ./pods/hello-world.yaml
```