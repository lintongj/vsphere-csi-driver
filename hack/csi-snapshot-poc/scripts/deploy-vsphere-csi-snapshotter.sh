#!/bin/bash

if ! command -v kustomize > /dev/null; then
  echo "kustomize is missing"
  echo "please install kustomize and retry"
  exit 1
fi

DRIVER_IMAGE=$1
SYNCER_IMAGE=$2

CSI_VERSION=dev
VSPHERE_VERSION=vsphere-7.0
CLUSTER_FLAVOR=vanilla

DIR=$(dirname $0)
MANIFESTS_DIR=$DIR/../../../manifests/$CSI_VERSION/$VSPHERE_VERSION/$CLUSTER_FLAVOR
PATCHES_DIR=$DIR/../patches/


# copy expected version of manifests to current directory
cp -r $MANIFESTS_DIR/* $PATCHES_DIR

# kustomize the manifests and deploy them onto cluster
CURRENT_DIR=$(pwd)
if [[ ! -z $DRIVER_IMAGE ]]; then
    echo "Driver image is customized"
    cd $PATCHES_DIR && kustomize edit set image gcr.io/cloud-provider-vsphere/csi/ci/driver:latest=$DRIVER_IMAGE && cd $CURRENT_DIR
fi

if [[ ! -z $SYNCER_IMAGE ]]; then
    echo "Syncer image is customized"
    cd $PATCHES_DIR && kustomize edit set image gcr.io/cloud-provider-vsphere/csi/ci/syncer:latest=$SYNCER_IMAGE && cd $CURRENT_DIR
fi

kustomize build $PATCHES_DIR | kubectl apply -f -

# delete copied manifests
rm -r $PATCHES_DIR/deploy $PATCHES_DIR/rbac
