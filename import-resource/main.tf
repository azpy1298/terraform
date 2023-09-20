resource "azurerm_resource_group" "basics" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_service_plan" "aspwebapp" {
  name                = "ASP-spacegame"
  resource_group_name = azurerm_resource_group.basics.name
  location            = "eastus"
  os_type             = "Windows"
  sku_name            = "F1"
}

resource "azurerm_windows_web_app" "winwebapp" {
  name                = "tfSpacegame"
  resource_group_name = azurerm_resource_group.basics.name
  location            = azurerm_service_plan.aspwebapp.location
  service_plan_id     = azurerm_service_plan.aspwebapp.id
  client_affinity_enabled           = true
  https_only                        = true

  site_config {
    always_on                               = "false"
    ftps_state                              = "FtpsOnly"

     virtual_application {
              physical_path = "site\\wwwroot"
              preload       = false
              virtual_path  = "/"
            }
  }

 
}
