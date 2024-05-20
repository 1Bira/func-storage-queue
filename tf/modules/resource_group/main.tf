resource "azurerm_resource_group" "rg_proj_files_proc" {
  name     = "rg-proj-files-change"
  location = var.rg_location
}