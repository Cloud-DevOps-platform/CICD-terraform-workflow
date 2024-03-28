# creating the terraform backend to store the state file

terraform {
  backend "azurerm" {
    resource_group_name  = "cdxplatform"
    storage_account_name = "state5566filebackup"
    container_name       = "storagecontiner"
    key                  = "terraformconfig.tfstate"
  }

}