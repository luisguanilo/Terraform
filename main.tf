terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "2.16.0"
    }
  }
}

# primer contenedor: Nginx
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

# Segundo contenedor: Nginx con un nombre diferente
resource "docker_container" "container_server_web_2" {
  name  = "server_web_2"
  image = "nginx:latest"

  ports {
    external = 4006 # para diferenciarlo del primer contenedor
    internal = 80
  }
}