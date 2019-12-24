# kubernetescleanup
This container shell script to cleanup your cluster.
sometime when you delete deployment or helm chart pvc and many other kubernetes object still persist in you cluster makes your cluster slow
# Warning 
Should not be used on production cluster.
This script will delete everything from your cluster helm release and cleanup all namespaces 
except <strong>kube-system</strong> and <strong>kube-public</strong>
# Usage
chmod +x clustercleanup.sh </br>
./clustercleanup.sh

