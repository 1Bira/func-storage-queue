locals {
    common_tags = {
        enviroment = "dev",
        proj="poc_function",
        owner="1bira"
        managed-by= "terraform"
    }

    project_location="West Europe"
    stg_accout_tier="Standard"
    stg_account_replication_type="LRS"

}