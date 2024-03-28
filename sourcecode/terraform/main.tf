# creating the resource group

resource "azurerm_resource_group" "firstcdxresource" {
  name     = "resourcecdx"
  location = "Eastus"

}



# creating the storage account

resource "azurerm_storage_account" "backupstorage" {
  name                     = "statefilebackup"
  resource_group_name      = azurerm_resource_group.firstcdxresource.name
  location                 = azurerm_resource_group.firstcdxresource.location
  account_tier             = "Standard"
  account_replication_type = "LRS"


}

# # creating the blob container in the storage account

# resource "azurerm_storage_container" "blobstorage" {
#   name                  = "storagecontiner"
#   storage_account_name  = azurerm_storage_account.backupstorage.name
#   container_access_type = "blob"

# }