# creating the resource group

resource "azurerm_resource_group" "prodenvironment" {
  name     = "prod-deployment"
  location = "Eastus"

}



# creating the storage account

resource "azurerm_storage_account" "backupstorage" {
  name                     = "remotebackendstate"
  resource_group_name      = azurerm_resource_group.prodenvironment.name
  location                 = azurerm_resource_group.prodenvironment.location
  account_tier             = "Standard"
  account_replication_type = "LRS"


}

# creating the blob container in the storage account

resource "azurerm_storage_container" "blobstorage" {
  name                  = "storagecontinerstate"
  storage_account_name  = azurerm_storage_account.backupstorage.name
  container_access_type = "blob"

}