terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "<= 3.0"
    }
    random = {
      source  = "hashicorp/random"
      version = ">=2.0"
    }
    time = {
      source  = "hashicorp/time"
      version = "0.9.1"
    }
    azapi = {
      source  = "azure/azapi"
      version = "~>1.5"
    }
  }
  # backend "azurerm" {
  #   container_name = "rahultest-tfstate"
  #   storage_account_name = "terraformprojecttfmanual"
  #   key = "rahul-test-dev"
  #   resource_group_name = "myrsg-rahul-portal"
    
  # }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
   
  features {}
  
}

resource "azurerm_resource_group" "example" {
  name     = "example-resources"
  location = "East US"
}