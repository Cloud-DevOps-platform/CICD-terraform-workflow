# creating the terraform backend to store the state file

# terraform {
#   backend "azurerm" {
#     resource_group_name  = "prod-deployment"
#     storage_account_name = "remotebackendstate"
#     container_name       = "storagecontinerstate"
#     key                  = "terraformconfig.tfstate"
#   }

# }