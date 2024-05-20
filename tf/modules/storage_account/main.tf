resource "azurerm_storage_account" "stg_files_proc" {
    account_tier            = var.stg_account_tier
    name                    = "stgFilesProcSales"
    resource_group_name     = azurerm_resource_group.rg_proj_files_proc.name
    location                = var.stg_location    
    account_replication_type = var.stg_account_replication_type
    tags = var.common_tags
}

resource "azurerm_storage_container" "cnt-stg-files-proc" {
  name = "cnt-stg-files-proc"
  storage_account_name = azurerm_resource_group.rg_proj_files_proc.name
  container_access_type = "private"

}