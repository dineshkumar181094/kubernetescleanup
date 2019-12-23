# kubernetescleanup
This container shell script to cleanup your cluster.
sometime when you delete deployment or helm chart pvc and many other kubernetes object still persist in you cluster makes your cluster slow
#Warning 
Should not be used on production cluster.
This script will delete everythin from your cluster helm release and cleanup all namespaces 
execpt kube-system and kube-public
#Usage
chomd +x clustercleanup.sh
./clustercleanup.sh

