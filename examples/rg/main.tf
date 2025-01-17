module "resource_group" {
  source  = "../../"

  resource_group_name     = "rg-no-iam"
  resource_group_location = "uksouth"
  resource_group_iam      = {}
  resource_group_tags     = {}

}