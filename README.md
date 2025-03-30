# homelab


Contains script for setting up my Talos based homelab

## Applications directory

The structure of the applications directory is rigid to work with the ArgoCD ApplicationSet GIT generator.

`/applications/<cluster_name>/<namespace>/<application>`

## Installing Talos cluster on the initial node

1. talosctl gen config homelab https://10.0.0.2:6443 --config-patch @cilium.patch.yaml
2. talosctl apply-config --insecure -n 10.0.0.2 --file controlplane.yaml

## Connecting worker nodes

1. talosctl apply-config --insecure -n 10.0.0.3 --file worker.yaml
2. talosctl apply-config --insecure -n 10.0.0.4 --file worker.yaml