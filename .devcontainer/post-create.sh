#!/usr/bin/env bash

set -euo pipefail

# Setup aliases
echo "alias k=kubectl" >> ~/.bashrc

# Create cluster
CLUSTERS=$(kind get clusters)
if [[ -z "$CLUSTERS" ]]; then
    echo "No clusters found."
else
    echo "Removing existing cluster."
    kind delete cluster --name dev-cluster
fi

kind create cluster --config ./cluster-config.yml --wait 5m --name dev-cluster

