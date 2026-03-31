helm install nfs-provisioner nfs-subdir-external-provisioner/nfs-subdir-external-provisioner \
  --namespace nfs-provisioner \
  --create-namespace \
  --set nfs.server=192.168.68.117 \
  --set nfs.path=/volume2/nfs-sc \
  --set storageClass.name=nfs-dynamic-sc \
  --set storageClass.defaultClass=false \
  --set storageClass.pathPattern="${.PVC.namespace}/${.PVC.name}" \
  --set storageClass.archiveOnDelete=false \
  --set storageClass.reclaimPolicy=Delete