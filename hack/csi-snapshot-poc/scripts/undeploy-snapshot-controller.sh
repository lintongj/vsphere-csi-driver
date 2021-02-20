#!/bin/bash

# kubectl is required to run this script

if ! command -v kubectl > /dev/null; then
  echo "kubectl is missing"
  echo "please refer to https://kubernetes.io/docs/tasks/tools/install-kubectl/ to install kubectl"
  exit 1
fi

# deploy snapshot controller
DIR=$(dirname $0)

kubectl delete -k $DIR/../snapshot-controller/
