DRIVER ?=
SYNCER ?=

deploy: deploy-crd deploy-snapshot-controller
	$(MAKE) deploy-vsphere-snapshotter DRIVER=$(DRIVER) SYNCER=$(SYNCER)

undeploy: undeploy-vsphere-snapshotter undeploy-snapshot-controller undeploy-crd

deploy-crd:
	@echo "Deploy CSI Snapshot CRDs"
	bash scripts/deploy-csi-snapshot-crd.sh

deploy-snapshot-controller:
	@echo "Deploy CSI Snapshot Controller"
	bash scripts/deploy-snapshot-controller.sh

deploy-vsphere-snapshotter:
	@echo "Deploy vSphere CSI Snapshotter"
	bash scripts/deploy-vsphere-csi-snapshotter.sh $(DRIVER) $(SYNCER)

undeploy-crd:
	bash scripts/undeploy-csi-snapshot-crd.sh

undeploy-snapshot-controller:
	bash scripts/undeploy-snapshot-controller.sh

undeploy-vsphere-snapshotter:
	@echo "Undeploy vSphere CSI Snapshotter"
	bash scripts/undeploy-vsphere-csi-snapshotter.sh
