<!-- markdownlint-disable MD034 -->
# Container Storage Interface (CSI) driver for vSphere

This repository provides tools and scripts for building and testing the vSphere CSI provider. This driver is in a stable `GA` state and is suitable for production use. It currently requires vSphere 6.7 U3 or higher in order to operate.

The CSI driver, when used on Kubernetes, also requires the use of the out-of-tree vSphere Cloud Provider Interface [CPI](https://github.com/kubernetes/cloud-provider-vsphere).

The driver has been tested with, and is supported on, K8s 1.14 and above.

## Documentation

Documentation for vSphere CSI Driver is available here:

* <https://vsphere-csi-driver.sigs.k8s.io>

## vSphere CSI Driver Images

Please use appropriate deployment yaml files available here - <https://github.com/kubernetes-sigs/vsphere-csi-driver/tree/master/manifests>

Note:

* `v1.0.2`, deployment yamls files are compatible with `v1.0.1`.
* It is recommended to use `v2.0.1` or `v2.1.0` if you're on `vSphere 6.7 Update3`. `v2.0.0` release is not backward compatible to vSphere 67u3 release.

### v2.1.0

* Refer https://github.com/kubernetes-sigs/vsphere-csi-driver/releases/tag/v2.1.0 for features listing and notable changes.
* Deployment YAML files - https://github.com/kubernetes-sigs/vsphere-csi-driver/tree/release-2.1/manifests/v2.1.0

### v2.0.1

* Refer https://github.com/kubernetes-sigs/vsphere-csi-driver/releases/tag/v2.0.1 for feature listing and notable changes.
* Deployment YAML files - https://github.com/kubernetes-sigs/vsphere-csi-driver/tree/master/manifests/v2.0.1

### v2.0.0

* Refer https://github.com/kubernetes-sigs/vsphere-csi-driver/releases/tag/v2.0.0 for feature listing and notable changes.
* Deployment YAML files - https://github.com/kubernetes-sigs/vsphere-csi-driver/tree/master/manifests/v2.0.0

### v1.0.2

* Refer https://github.com/kubernetes-sigs/vsphere-csi-driver/releases/tag/v1.0.2 for feature listing and notable changes.
* Deployment YAML files - https://github.com/kubernetes-sigs/vsphere-csi-driver/tree/master/manifests/v1.0.2

### v1.0.1

* Refer https://github.com/kubernetes-sigs/vsphere-csi-driver/releases/tag/v1.0.1 for feature listing and notable changes.
* Deployment YAML files - https://github.com/kubernetes-sigs/vsphere-csi-driver/tree/master/manifests/v1.0.1

## Contributing

Please see [CONTRIBUTING.md](CONTRIBUTING.md) for instructions on how to contribute.
