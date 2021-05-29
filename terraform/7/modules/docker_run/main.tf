provider "docker" {
  host = "tcp://${var.ssh_host}:2375"
}

resource "docker_image" "nginx" {
  name = "nginx:latest"
}
resource "docker_container" "nginx" {
  image = docker_image.nginx.latest
  name  = "enginecks"
  ports {
    internal = 80
    external = 80
  }
}
