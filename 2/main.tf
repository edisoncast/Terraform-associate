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
    name = "ubuntu:20.04"
    keep_locally = true
}

resource "docker_container" "ubuntu" {
    image = docker_image.server.latest
    name  = "terraform-ubuntu"
    start = true
    command = ["/bin/sleep", "500"]
}
