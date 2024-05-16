variable "location" {
  description = "region i ill create in azure"
  type= string
  default= "West Europe"
}

variable "account_tier" {
  description = "Storage account Tier"
  type= string
  default = "Standard"
}

variable "account_replication_type" {
    description = "Data Replication type"
    type = string
    default = "LRS"
}