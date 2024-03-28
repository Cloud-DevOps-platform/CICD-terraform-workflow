resource "azurerm_service_plan" "cdxserviceplan" {
  name                = "hdforwebapp"
  resource_group_name = azurerm_resource_group.firstcdxresource.name
  location            = azurerm_resource_group.firstcdxresource.location
  os_type             = "Linux"
  sku_name            = "P1v2"
}

resource "azurerm_linux_web_app" "nodejs_web_app" {
  name                = "webppcdx"
  resource_group_name = azurerm_resource_group.firstcdxresource.name
  location            = azurerm_resource_group.firstcdxresource.location
  service_plan_id     = azurerm_service_plan.cdxserviceplan.id

  site_config {}

}