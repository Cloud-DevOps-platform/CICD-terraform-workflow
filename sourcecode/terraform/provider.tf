# Azure provider source and version

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}


provider "azurerm" {

  features {
    
  }

  subscription_id = "24699a0d-5339-440c-a1b7-2b79980936cb"
  client_id = "396c8600-4bba-4c79-8b35-cf8c68dbcf1f"
  client_secret = "tJG8Q~eqn-8ErUTn6Qpc3xGpe4Q.LbT0L6ARjcRx"
  tenant_id = "c1bb20fe-be98-4df4-8042-44010bbca5c7"
  skip_provider_registration = true
  
}