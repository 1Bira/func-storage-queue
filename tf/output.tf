output "storage_account_id" {
    description = "Storage account ID, created in azure"
    value = azurerm_resource_group.rg_storage_files_proc.id
}

output "sa_primary_acess_key" {
    description = "Storage account primary acess key, created in azure"
    value = azurerm_resource_group.rg_storage_files_proc.sa_primary_acess_key
    sensitive = true
}