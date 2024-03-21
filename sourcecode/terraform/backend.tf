# creating the terraform backend to store the state file

terraform {
  backend "azurerm" {
    resource_group_name  = "CDX-platform"
    storage_account_name = "tffilebackup"
    container_name       = "statefilestorage-container"
    key                  = "backup.tfstate"
    access_key = "eBfXWFsjNOHO1XZmfha0Xzk4/VMK3LALgVQwgVOnuHBkq6X+CFyf1i0u6Sc/GWTJUdLDjIrRf+sx+AStELGsdw=="



  }
}