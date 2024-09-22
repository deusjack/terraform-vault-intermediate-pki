terraform {
  required_version = ">= 1.8"
  required_providers {
    null = {
      source  = "hashicorp/null"
      version = ">= 3, < 4"
    }
    vault = {
      source  = "hashicorp/vault"
      version = ">= 4, < 5"
    }
  }
}
