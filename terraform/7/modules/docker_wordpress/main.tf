
# Set the required provider and versions
terraform {
  required_providers {
    # We recommend pinning to the specific version of the Docker Provider you're using
    # since new versions are released frequently
    # .terraform.lock.hcl
    # https://registry.terraform.io/providers/kreuzwerker/docker/2.12.2
    docker = {
      source  = "kreuzwerker/docker"
      #version = "2.11.0"
      #version = "2.13.0"
    }
  }
}

# Configure the Docker provider
provider "docker" {
  host = "unix:///var/run/docker.sock"
}

# Volume database
resource "docker_volume" "db_data" {
  name           = "db_data"
  driver         = "local"
  driver_opts = {
    o = "bind"
    type = "none"
    device = "/tt/wordpressdb/"
  }
}

resource "docker_network" "wordpress" {
  name = "wordpress_net"
}

resource "docker_container" "db" {
  name  = "db"
  image = "mysql:5.7"
  #image = "mysql@sha256:87eca374c0ed97f0f0b504174b0d22b0a0add454414c0dbf5ae43870369f6854"
  restart = "always"
  network_mode = "wordpress_net"
  env = [
     "MYSQL_ROOT_PASSWORD=wordpress",
     "MYSQL_PASSWORD=wordpress",
     "MYSQL_USER=wordpress",
     "MYSQL_DATABASE=wordpress"
  ]
  networks_advanced {
    name = docker_network.wordpress.name
  }
  volumes {
    host_path = "/tt/wordpressdb/"
    container_path = "/var/lib/mysql/"
    volume_name = "db_data"
    read_only      = "false"
  }
}


# No volume data is used for wordpress
resource "docker_container" "wordpress" {
  name  = "wordpress"
  image = "wordpress:latest"
  restart = "always"
  networks_advanced {
    name = docker_network.wordpress.name
  }
  env = [
    "WORDPRESS_DB_HOST=db:3306",
    "WORDPRESS_DB_USER=wordpress",
    "WORDPRESS_DB_PASSWORD=wordpress",
    "WORDPRESS_DB_NAME=wordpress"
  ]
  ports {
    internal = 80
    external = var.wordpress_port
  }
}
