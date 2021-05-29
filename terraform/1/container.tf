# Devops exercise container 1
#resource "docker_container" "nginx" {
#  name  = "de_nginx"
#  image = "nginx:latest"

#  ports {
#    internal = "80"
#    external = "8080"
# }
#}


# Devops exercise container 1
resource "docker_container" "hello_world" {
  name  = "de_hello_world"
  image = "tutum/hello-world"

# Expose port to 8080

  ports {
    internal = 80
    external = 8082
   }
}

# Devops exercise container 2
resource "docker_container" "adminer" {
  name  = "de_adminer"
  image = "adminer:4.8.0"

# Expose port to 8081

  ports {
    internal = 80
    external = 8081
   }
}