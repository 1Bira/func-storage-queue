resource "azurerm_storage_account" "stg-func-file-change" {
  name                     = "stgfuncfilechange"
  account_tier             = var.func_sacount_account_tier
  resource_group_name      = var.resource_group_name
  location                 = var.func_location
  account_replication_type = var.func_sacount_replication_type
}

resource "azurerm_service_plan" "funct-file" {
  name                = "func-file-change"
  resource_group_name = var.resource_group_name
  location            = var.func_location
  os_type             = "Linux"
  sku_name            = "Y1" # Consumption Plan
}

resource "azurerm_linux_function_app" "func-update-storage" {
  name                = "func-update-storage"
  resource_group_name = var.resource_group_name
  location            = var.func_location

  storage_account_name       = azurerm_storage_account.stg-func-file-change.name
  storage_account_access_key = azurerm_storage_account.stg-func-file-change.primary_access_key
  service_plan_id            = azurerm_service_plan.funct-file.id

  site_config {

  }
}

