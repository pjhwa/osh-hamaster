#!/bin/bash

PFILES="inventory.yaml deploy-env.yaml"
TASKSFILES="main.yaml prerequisites.yaml client_cluster_ssh.yaml containerd.yaml haproxy_keepalived.yaml k8s_common.yaml k8s_control_plane.yaml k8s_client.yaml calico.yaml"
FFILES="kubeadm_config.yaml hosts containerd_config.toml"
HAKFILES="install-keepalived.yaml templates/keepalived.conf.j2 install-haproxy.yaml templates/haproxy.cfg.j2"

echo ">>> /home/citec/osh/hak.sh <<<"
cat /home/citec/osh/hak.sh

echo ">>> /home/citec/osh/00.sh <<<"
cat /home/citec/osh/00.sh

for i in $PFILES
do
        echo ">>> /home/citec/osh/${i} <<<"
        cat /home/citec/osh/${i}
done

for i in $HAKFILES
do
        echo ">>> /home/citec/osh/${i} <<<"
        cat /home/citec/osh/${i}
done

for i in $TASKSFILES
do
        echo ">>> /home/citec/osh/openstack-helm/roles/deploy-env/tasks/${i} <<<"
        cat /home/citec/osh/openstack-helm/roles/deploy-env/tasks/${i}
done

for i in $TEMPLATES
do
        echo ">>> /home/citec/osh/openstack-helm/roles/deploy-env/templates/${i} <<<"
        cat /home/citec/osh/openstack-helm/roles/deploy-env/templates/${i}

done

for i in $FFILES
do
        echo ">>> /home/citec/osh/openstack-helm/roles/deploy-env/files/${i} <<<"
        cat /home/citec/osh/openstack-helm/roles/deploy-env/files/${i}
done
