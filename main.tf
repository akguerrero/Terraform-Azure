# Configure the Azure provider
terraform {
  required_providers {
    azurerm = {
      source  = "terraform-provider-azurerm/azurerm"
      version = "3.44.1"
    }
  }

  required_version = ">= 1.1.0"
}

provider "azurerm" {
  features {}
}
resource "azurerm_resource_group" "rg" {
  name     = "terra-rg"
  location = "eastus2"

  tags = {
    Environment = "Terraform Getting Started"
    Team = "DevOps"
  }
}
