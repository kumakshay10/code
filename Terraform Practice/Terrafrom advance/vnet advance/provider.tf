terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.5.0"
    }
  }
}

provider "azurerm" {
  features {
    
  }
  subscription_id = "79942532-91f6-457f-ace0-7730cf3e35b1"
}