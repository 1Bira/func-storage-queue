output "storage_account_id" {
  description = "Storage account ID, created in azure"
  value       = azurerm_resource_group.rg_storage_files_proc.id
}

output "sa_primary_acess_key_stg_change" {
  description = "Storage account primary acess key, created in azure"
  value       = azurerm_resource_group.rg_storage_files_proc.sa_primary_acess_key
  sensitive   = true
}

output "sa_primary_acess_key_stg_func" {
  description = "Storage account primary access key to storage fucntion"
  value       = azurerm_storage_account.ltech-stg-func-file-change.sa_primary_acess_key
  sensitive   = true
}