module "resource_group" {
    source = "./modules/resource_group"
    rg_location = local.project_location
}

module "storage_account" {
    source = "./modules/storage_account"
    stg_location = local.project_location
    stg_account_replication_type = local.stg_account_replication_type
    stg_account_tier = local.stg_accout_tier
    common_tags = local.common_tags
}

module "function" {
    source = "./modules/function"
    func_location = local.project_location
    func_sacount_account_tier = local.stg_accout_tier
    func_sacount_replication_type = local.stg_account_replication_type    
}


