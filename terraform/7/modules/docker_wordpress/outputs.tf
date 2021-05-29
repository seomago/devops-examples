output "docker_ip_db" {
  value = docker_container.db.ip_address
}
output "docker_ip_wordpress" {
  value = docker_container.wordpress.ip_address
}
output "docker_volume" {
  value = docker_volume.db_data.driver_opts.device
}
output "docker_volume_mountpoint" {
  value = docker_volume.db_data.mountpoint
}
