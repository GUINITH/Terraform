terraform {
  required_version = ">=1.10.0"
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.3.0"
    }
  }
}

provider "azurerm" {
  resource_provider_registrations = "none"
  features {}
}