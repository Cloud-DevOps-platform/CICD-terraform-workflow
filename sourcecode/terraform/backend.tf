# creating the terraform backend to store the state file

terraform {
  backend "azurerm" {
    resource_group_name  = "resourcecdx"
    storage_account_name = "statefilebackup"
    container_name       = "storagecontiner"
    key                  = "terraformconfig.tfstate"

  }
}