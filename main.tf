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
    subscription_id = "c9642077-afde-461c-9e7c-81536f8e0e97"
    client_id       = "cb274029-8b54-4c2f-ad5b-f2d53d17506a"
    client_secret   = "HwZ8Q~Ax73SPu~9DWkIRp.2OX3TecRQJM1LSraE7"
    tenant_id       = "40e20b2c-2571-4106-a067-9cad17e7ef47"
}
resource "azurerm_resource_group" "rg" {
  name     = "terra-rg"
  location = "eastus2"

  tags = {
    Environment = "Terraform Getting Started"
    Team = "DevOps"
  }
}