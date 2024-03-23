# creating the resource group

resource "azurerm_resource_group" "CDX-platform" {
  name     = "CDX-platform"
  location = "Eastus"

}


# creating the storage account

# resource "azurerm_storage_account" "statefilestorage" {
#   name                     = "infraCDX-backup"
#   resource_group_name      = azurerm_resource_group.CDX-platform.name
#   location                 = azurerm_resource_group.CDX-platform.location
#   account_tier             = "Standard"
#   account_replication_type = "LRS"


# }

# # creating the blob container in the storage account

# resource "azurerm_storage_container" "stateblobstorage" {
#   name                  = "cdxtffile-container"
#   storage_account_name  = azurerm_storage_account.statefilestorage.name
#   container_access_type = "blob"

# }