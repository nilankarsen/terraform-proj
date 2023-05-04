terraform {
  required_providers {
  }
  required_version = ">= 1.1.0"

  backend "azurerm" {
      resource_group_name  = "testnilankarnew"
      storage_account_name = "testnilankarnew"
      container_name       = "testnew"
      key                  = "terraform.tfstate"
  }
}


provider "azurerm" {
  features {}
}