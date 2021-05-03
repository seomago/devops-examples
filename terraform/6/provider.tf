# Set the required provider and versions
terraform {
  required_providers {
    # We recommend pinning to the specific version of the Docker Provider you're using
    # since new versions are released frequently
    docker = {
      source  = "kreuzwerker/docker"
      version = "2.11.0"
    }
    minio = {
      source = "gaima8/minio"
      version = "1.0.0"
    }
  }
}

# Configure the Docker provider
provider "docker" {
  host = "unix:///var/run/docker.sock"
}


provider "minio" {
  minio_server = "localhost:9001"
  minio_region = "us-east-1"
  minio_access_key = "minioadmin"
  minio_secret_key = "minioadmin"
  #minio_access_key = "minio"
  #minio_secret_key = "minio123"
}


# https://github.com/kreuzwerker/terraform-provider-docker