terraform {
  backend "remote" {
    organization = "devops-playground-dev-github"
    workspaces {
      name = "az-k8s-cors-proxy"
    }
  }
}

provider "azurerm" {
  features {}
  skip_provider_registration = true
  subscription_id = "573a3f82-1bf4-4249-bccf-51eebb9dd5da"
}
