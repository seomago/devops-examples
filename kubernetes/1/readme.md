
# My devops exercises - kubernetes

## commands kind



## commands

kubectl exec -it nginx-xididix-348shs -- /bin/sh

kubectl get nodes
kubectl get nodes,namespace
kubectl create namespace testing
kubectl get namespace
kubectl delete namespace testing


kubectl apply -f 00-namespace.yml
vi 00-namespace.yml
kubectl get namespace

kubectl get po -o wide
kubectl get po -o wide -n default
kubectl get po -o wide -n kube-system

kubectl exec -it nginx-xididix-348shs -- hostname
kubectl exec -it nginx-xididix-348shs -- hostname -I
kubectl exec -it nginx-xididix-348shs -- nginx -v
kubectl exec -it nginx-xididix-348shs -- tail -f /var/log/access.log

kubectl exec -it nginx-xididix-348shs -- curl -v | head
kubectl exec -it nginx-xididix-348shs -- curl localhost | head
kubectl logs

kubectl exec -it adminer-xididix-348shs -- curl 172.20.9.1 | head
kubectl exec -it adminertest-xididix-348shs -- curl 172.20.9.1 | head

## tips

alias k=kubectl
alias kg='kubectl get'
alias ka='kubectl apply -f'
alias sse='kubectl exec -it'

## bash tips
ctrl-alt e
alt .

## reference