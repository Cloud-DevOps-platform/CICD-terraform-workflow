# creating the terraform backend to store the state file

terraform {
  backend "azurerm" {
    resource_group_name  = "CDX-platform"
    storage_account_name = "infraCDX-backup"
    container_name       = "cdxtffile-container"
    key                  = "terraformconfig.tfstate"


  }
}
