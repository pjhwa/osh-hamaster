#!/bin/bash

banner "RESET"
00.sh

banner "KeepAlived"
ansible-playbook -i inventory.yaml install-keepalived.yaml

banner "HAProxy"
ansible-playbook -i inventory.yaml install-haproxy.yaml

banner "K8s & OS"
#ansible-playbook -i inventory.yaml deploy-env.yaml -vvv | tee ansible_log.txt
ansible-playbook -i inventory.yaml deploy-env.yaml -vvv
