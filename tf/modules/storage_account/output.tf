output "storage_account_id" {
  description = "Storage account ID, created in azure"
  value       = azurerm_storage_account.stg_files_proc.id
}

output "sa_primary_acess_key_stg_change" {
  description = "Storage account primary acess key, created in azure"
  value       = azurerm_storage_account.stg_files_proc.primary_access_key
  sensitive   = true
}
