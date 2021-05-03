
# kiamol 02

## commands

#run a Pod with a single container; the restart flag tells Kubernetes
#to create just the Pod and no other resources:
kubectl run hello-kiamol --image=kiamol/ch02-hello-kiamol --restart=Never
#wait for the Pod to be ready:
kubectl wait --for=condition=Ready pod hello-kiamol
#list all the Pods in the cluster:
kubectl get pods
#show detailed information about pod
kubectl describe pod hello-kiamol
kubectl describe pod hello-kiamol | grep IP
kubectl get -o wide pods hello-kiamol


kubectl get pod hello-kiamol --output custom-
columns=NAME:metadata.name,NODE_IP:status.hostIP,POD_IP:status.podIP
