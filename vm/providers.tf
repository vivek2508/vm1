terraform {

  required_version = ">=0.12"

  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "~>2.0"
    }
  }
   backend "azurerm" {
    resource_group_name  = "MyRg"
    storage_account_name = "storage1509"
    container_name       = "container1509"
    key                  = "terraform.tfstate"
  }
}
}

provider "azurerm" {
  features {}
}
