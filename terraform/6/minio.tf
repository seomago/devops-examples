# Devops exercise container 2
resource "docker_container" "de_minio" {
  name  = "de_minio"
  hostname: aa.com
  image = "minio/minio"
  state = "started"
  command = ["server", "/data"]
# Expose port to 9001
  ports {
    internal = 9000
    external = 9001
  }
  env:
    xxMINIO_ACCESS_KEY: "myaccesskey"
    xxMINIO_SECRET_KEY: "mysupersecretkey"   
}

# https://dickingwithdocker.com/2019/02/terraform-s3-remote-state-with-minio-and-docker/