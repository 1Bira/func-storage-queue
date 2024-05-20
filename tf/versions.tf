terraform {
  required_version = "~>1.6.4"

  required_providers {
    azurerm = {
      version = "3.1.0"
      source  = "hashicorp/azurerm"
    }
  }
}

provider "azurerm" {
  features {}
}