#!/bin/bash

if ! command -v kustomize > /dev/null; then
  echo "kustomize is missing"
  echo "please install kustomize and retry"
  exit 1
fi

CSI_VERSION=dev
VSPHERE_VERSION=vsphere-7.0
CLUSTER_FLAVOR=vanilla

DIR=$(dirname $0)
MANIFESTS_DIR=$DIR/../../../manifests/$CSI_VERSION/$VSPHERE_VERSION/$CLUSTER_FLAVOR
PATCHES_DIR=$DIR/../patches/


# copy expected version of manifests to current directory
cp -r $MANIFESTS_DIR/* $PATCHES_DIR

# delete vsphere csi snapshotter
kustomize build $PATCHES_DIR | kubectl delete -f -

# delete copied manifests
rm -r $PATCHES_DIR/deploy $PATCHES_DIR/rbac
