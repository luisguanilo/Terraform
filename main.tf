terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "2.16.0"
    }
  }
}

provider "docker" {
    host = "tcp://localhost:2375/"
    }

resource "docker_container" "container_server_web" {
  name  = "server_web"
  image = "nginx:latest"

  ports {
    external = 4005
    internal = 80
  }
}