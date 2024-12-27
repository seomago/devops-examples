# DevOps with examples
by seomago
Update: 29/5/2021

## About the project

These is a list of self-study examples for my personal Devops roadmap learning path.
DevOps is changing the way of developing web applications. We will be building several web applications 
using different technologies.
We will be using debian distribution linux machines.

## Getting started

We will use a Ghost blogging web application as an example but all the concepts are aplicable to any web application.

Simply clone the repository on a testing / dev / debian/ubuntu machine and follow the commands/ instructions.
You will learn a lot with all these examples.

```
git clone git@github.com/seomago/devops-examples
```
If you like this project and you want to contribute, you're more than welcome to do it, See contribute section below.


## 1. Terraform examples (with docker)
   1. [Terraform and docker provider example 1](./terraform/1) 
   2. [Terraform database container](./terraform/2) 
   3. [wordpress container example](./terraform/3) 
   4. [Reverse proxy Traefik with wordpress container](./terraform/4) 
   5. [Nginx Ghost example](./terraform/5)
   6. [Minio S3 container](./terraform/6)
   7. [Terraform modules](./terraform/7)
   8. [kubernetes kind provider](./terraform/8)
   9. Terraform AWS EKS cloud examples...

## 2. Docker and Docker-compose examples  
   1. [App 3-tier ngix + mono front ghost + mysql](./docker/1)
   2. [Adminer/Ghost Multi front nodes with LB without docker](./docker/2)
   3. [Portainer 2.0 + App Multi front](./docker/3)
   4. [freshrss app](./docker/4)
   5. more to come...

## 3. Kubernetes examples
   1. [Creating cluster with kind](./kubernetes/1) / [video](https://youtu.be/fhYSKEy0s8w)
   2. [arkade+kind+k9s+delete namespace+kubectl get nodes+k apply.Services and Load Balancers](./kubernetes/2) 
   3. [arkade+k9s+Deployments](./kubernetes/3) / [video](https://youtu.be/q-ZicDSb3Cc)
   4. [App easy install with arkade](./kubernetes/4)
   5. [kubernetes and ingress example](./kubernetes/5) /
   6. [kubernetes and argo CD example](./kubernetes/6) /
   7. more to come...

## 4. Sysadmin linux - ansible examples
Classic web app 3-tier installation
   1. [App Mono tier ghost - without ansible - the old non devops way - priximmo/buster-systemd-ssh](./sysadmin/1)
   2. [App Mono tier ghost install - with ansible](./sysadmin/2)
   3. [App 3-tier ghost install](./sysadmin/3)

## 5. Bootloose/awless examples

  1. [Bootloose install master/minion](./salt/1) /
  2. [Salt basic usage](./salt/2) /
  3. [Salt state file example](./salt/3) /
  4. [Salt state file example](./salt/4) /
  5. [Salt formula example](./salt/5) /

## 6. Other topics
   1. [Arkade install terraform](./mix/1) /
   2. [Ansible installation](./mix/2) /
   2. [Portainer CE / weavescope and docker swarm](./mix/3) /
   3. [Jupyter notebooks presentation and installation](./mix/4) /
   4. [kubernetes cluster with kubeadm](./mix/5) /

   6. [influxdb / telegraf](./mix/3) /
   7. [Prometheus](./mix/3) 
   8. [App Mono tier ghost install - with bash jupyter notebook](./sysadmin/2)


## DevOps References
* https://github.com/xe-nvdk/easy-kubernetes-cookbook
* https://github.com/pablokbs/peladonerd
* https://github.com/alexellis/arkade
* https://www.server-world.info/en/note?os=CentOS_7&p=salt&f=1
* https://www.server-world.info/en/note?os=CentOS_7&p=ansible&f=1

* https://github.com/lokeshkamalay/DevOps-References
* https://github.com/seomago/devops-examples
* https://github.com/geerlingguy/ansible-for-devops
* https://github.com/geerlingguy/ansible-for-kubernetes

## References Terraform
* https://gitlab.com/xavki/presentations-terraform-fr
* https://github.com/zealvora/terraform-beginner-to-advanced-resource

## Bootloose references
* https://github.com/k0sproject/bootloose

## Feedback / Contribute

I am sure all these exercises are can be improved/more academic.
If you like this project and you want to contribute, you're more than welcome to do it, just fork it and make a pull request when you're ready. Here, you can see the  [To Do list](https://github.com/seomago/devops-examples/projects/1) and here the [Issues](https://github.com/seomago/devops-examples/issues).


## Acknowledgements

* https://github.com/scalicoin / Alias Victor Hugo