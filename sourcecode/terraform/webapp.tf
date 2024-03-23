resource "azurerm_service_plan" "cdxserviceplan" {
  name                = "hdforwebapp"
  resource_group_name = azurerm_resource_group.CDX-platform.name
  location            = azurerm_resource_group.CDX-platform.location
  os_type             = "Linux"
  sku_name            = "P1v2"
}

resource "azurerm_linux_web_app" "nodejs_web_app" {
  name                = "webppcdx"
  resource_group_name = azurerm_resource_group.CDX-platform.name
  location            = azurerm_resource_group.CDX-platform.location
  service_plan_id     = azurerm_service_plan.cdxserviceplan.id

  site_config {
    linux_fx_version = "node|16-lts"
  }
  app_settings = {
    "WEBSITE_NODE_DEFAULT_VERSION" = "~16"
  }
}