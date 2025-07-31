terraform {
  required_version = ">= 1.0"
  required_providers {
    docker = {
      source  = "bmatcuk/vagrant"
      version = "~> 4.0"
    }
  }
}

