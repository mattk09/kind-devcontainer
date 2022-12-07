#!/usr/bin/env bash

# Setup aliases
echo "alias k=kubectl" >> ~/.bashrc

# Create cluster
kind create cluster --config ./cluster-config.yaml --wait 5m --name dev-cluster

