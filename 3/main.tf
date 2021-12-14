terraform {
  required_providers {
    docker = {
      source = "kreuzwerker/docker"
      version = "2.15.0"
    }
  }
}

provider "docker" {}

resource "docker_image" "server" {
    name = "nginx"
    keep_locally = true
}

resource "docker_container" "nginx" {
    image = docker_image.server.latest
    name  = "terraform-nginx"
    ports {
        internal = 80
        external = var.external_port
        protocol = "tcp"
    }
}
