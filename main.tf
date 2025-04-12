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
# ambos contenedores figuran en la lista al momento de ejecutar  el comando docker ps, que me sirve para ver los contenedores en ejecucion:
# CONTAINER ID   IMAGE          COMMAND                  CREATED              STATUS              PORTS                  NAMES
# 0f310a792a49   nginx:latest   "/docker-entrypoint.…"   About a minute ago   Up About a minute   0.0.0.0:4005->80/tcp   server_web
# e3e1e5aed4da   nginx:latest   "/docker-entrypoint.…"   About a minute ago   Up About a minute   0.0.0.0:4006->80/tcp   server_web_2