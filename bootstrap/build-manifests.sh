#!/bin/bash
brew install helm

kubectl apply -n argocd -f http://raw.githubusercontent.com/argoproj/argo-cd/refs/heads/master/manifests/core-install.yaml

kubectl apply -f applications/applications.yaml
