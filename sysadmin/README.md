# Create an EC2 instance.

The `distro` param allows to resolve from the current region the official community free bare AMI according to an awless specific bare distro query format, ordering by latest first. The query string specification is the following column separated format:

                owner:distro:variant:arch:virtualization:store

In this query format, everything is optional expect for the 'owner'. Supported owners: windows, canonical, redhat, debian, amazonlinux, coreos, centos, suselinux

## USAGE:
  awless create instance [param=value ...] [flags]

## EXAMPLES:
* zone eu-west-1
* image amazon linux
```shell
  * awless create instance name=demo-ecs1 image=ami-123456 keypair=jsmith type=t2.small userdata=/home/jsmith/data.sh securitygroup=@my-ssh-secgroup
  * awless create instance name=demo-ecs1 image=ami-0a094c309b87cc107 keypair=manuel type=t3.medium userdata=/home/jsmith/data.sh securitygroup=@my-ssh-secgroup
```

## user data.sh for amazon linux AMI
```shell
#!/bin/bash
# install and configure docker on the ec2 instance Amazon linux eu-west-1 
# ami-0a094c309b87cc107
sudo yum update -y
sudo amazon-linux-extras install docker -y
sudo service docker start
sudo systemctl enable docker
docker version
docker pull portainer/portainer-ce:2.25.1
docker pull xxx
docker run -d -p 80:80 nginx:latest
```
## EXAMPLES 2:
```shell
  awless create image=ami-123456 # Start to create instance from specific image
  awless create instance keypair=jsmith type=t2.micro subnet=@my-subnet


  awless create instance image=ami-123456 keypair=jsmith
  awless create instance name=redis type=t2.nano keypair=jsmith userdata=/home/jsmith/data.sh
  
  awless create instance distro=redhat type=t2.micro
  awless create instance distro=coreos name=redis-prod
  awless create instance distro=redhat::7.2 type=t2.micro
  awless create instance distro=canonical:ubuntu role=MyInfraReadOnlyRole
  awless create instance distro=debian:debian:jessie lock=true
  awless create instance distro=amazonlinux securitygroup=@my-ssh-secgroup
  awless create instance distro=amazonlinux:::::instance-store
  awless create instance distro=amazonlinux:amzn2
```

## PARAMS:
  * count............. The number of instances to launch
  * distro............ The distro query to resolve official community free bare distro AMI from current region. See above description from this help for specific queries. Default choices: (amazonlinux | canonical:ubuntu | redhat:rhel | debian:debian | centos:centos | coreos:coreos | suselinux | windows:server)
  * image............. The ID of an AMI for the instance to be launched
  * name.............. The name of the instance to launch
  * subnet............ The ID of the subnet to launch the instance into
  * type.............. The instance type (t2.nano | t2.micro | t2.small | t2.medium | t2.large | t2.xlarge | t2.2xlarge | m4.large | m4.xlarge | c4.large | c4.xlarge)
  * [ip].............. The primary IPv4 address
  * [keypair]......... The name of the key pair
  * [lock]............ If you set this parameter to true, you can't terminate the instance using the Amazon EC2 console, CLI, or API; otherwise, you can (true | false)
  * [role]............ The name of the instance profile (role) to launch the instance with
  * [securitygroup]... One or more security group IDs
  * [userdata]........ The user data to make available to the instance

## PARAMS PATTERNS:
   (distro | image) + count + type + name + subnet + [ip userdata lock role keypair securitygroup]

## SEE ALSO:
  * attach instance
  * check instance
  * create instance
  * delete instance
  * detach instance
  * restart instance
  * start instance
  * stop instance
  * update instance