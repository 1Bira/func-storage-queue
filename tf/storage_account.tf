resource "azurerm_resource_group" "rg_storage_files_proc" {
    name = "rg-storage-files-proc"
    location = var.location
}

resource "azurerm_storage_account" "stg_files_proc" {
    access_tier             = var.account_tier
    name                    = "stgFilesProcSales"
    resource_group_name     = azurerm_resource_group.rg_storage_files_proc.name
    location                = var.location    
    account_replication_type = var.account_replication_type
    tags = local.common_tags
}

resource "azurerm_storage_container" "cnt-stg-files-proc" {
  name = "cnt-stg-files-proc"
  storage_account_name = azurerm_storage_account.stg_files_proc.name
  container_access_type = "private"
}