terraform {
  required_version = ">=1.10.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.26.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "gui-rg"
    storage_account_name = "stgguidev"
    container_name       = "gui-container"
    key                  = "prod.terraform.tfstate"
  }

}

provider "azurerm" {
  features {}
}