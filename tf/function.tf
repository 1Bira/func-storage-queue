resource "azurerm_storage_account" "ltech-stg-func-file-change" {
    name                    = "stg-func-file-change"
    account_tier            = var.account_tier
    resource_group_name     = azurerm_resource_group.rg_proj_files_proc.name
    location                = var.location
    account_replication_type = var.account_replication_type
}

resource "azurerm_service_plan" "ltech-funct-file" {
    name                = "func-file-change"
    resource_group_name = azurerm_resource_group.rg_proj_files_proc.name
    location            = var.location
    os_type             = "Linux"
    sku_name            = "Y1"   # Consumption Plan
}

resource "azurerm_linux_function_app" "func-update-storage" {
    name                  = "func-update-storage"
    resource_group_name   = azurerm_resource_group.rg_proj_files_proc.name
    location              = var.location
    
    storage_account_name = azurerm_storage_account.ltech-stg-func-file-change.name
    storage_account_access_key = azurerm_storage_account.ltech-stg-func-file-change.sa_primary_acess_key
    service_plan_id = azurerm_service_plan.ltech-funct-file.id

    site_config {
        
    }
}

