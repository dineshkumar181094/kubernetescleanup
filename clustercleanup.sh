#!/bin/bash
#This script is used to clean your cluster delete every kubernetes object
#USAGE ./clustercleanup.sh
helm ls --all --short | xargs -L1 helm delete --purge --no-hooks --debug
namespaces=$(kubectl  get ns | grep -v kube-system | grep -v kube-public | awk '{print$1}')
for namespace in $namespaces
do
  kubectl delete "$(kubectl api-resources --namespaced=true --verbs=delete -o name | tr "\n" "," | sed -e 's/,$//')" --all -n $namespace  --timeout=0s --force=true --grace-period=0
done
