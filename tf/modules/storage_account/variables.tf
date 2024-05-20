variable "stg_location" {
  description = "region i ill create in azure"
  type= string
  default= "West Europe"
}

variable "stg_account_tier" {
  description = "Storage account Tier"
  type= string
  default = "Standard"
}

variable "stg_account_replication_type" {
    description = "Data Replication type"
    type = string
    default = "LRS"
}


variable "common_tags" {
  type = any
  description = "(optional) describe your variable"
  
}