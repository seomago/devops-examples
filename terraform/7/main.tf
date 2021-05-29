#docker remote ssh IP
variable "ssh_host" {}
variable "ssh_user" {}
variable "ssh_key" {}
variable "wordpress_port" {}

module "docker_wordpress" {
  source 		    = "./modules/docker_wordpress"
  #ssh_host		  = var.ssh_host
  #ssh_user 	  	= var.ssh_user
  #ssh_key  		  = var.ssh_key
  wordpress_port	= var.wordpress_port
}

output "docker_ip_db" {
  value = module.docker_wordpress.docker_ip_db
}
output "docker_ip_wordpress" {
  value = module.docker_wordpress.docker_ip_wordpress
}
output "docker_volume" {
  value = module.docker_wordpress.docker_volume
}
output "docker_volume_mountpoint" {
  value = module.docker_wordpress.docker_volume_mountpoint
}
