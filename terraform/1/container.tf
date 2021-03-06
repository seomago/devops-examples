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
  #image = "tutum/hello-world"
  image             = "sha256:31e17b0746e48958b27f1d3dd4fe179fbba7e8efe14ad7a51e964181a92847a6"
# Expose port to 8080

  ports {
    internal = 80
    external = 8082
   }
}

# Devops exercise container 2
resource "docker_container" "adminer" {
  name  = "de_adminer"
  ##image = "adminer:4.8.0"
  image = "sha256:22af2cdff18e38f0b4cdb794043ddad5cc122f2eb4a53f061fb10a1caa48fcf8"

# Expose port to 8081

  ports {
    internal = 8080
    external = 8081
   }
}