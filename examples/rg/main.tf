module "resource_group" {
  source  = "../../"

  name     = "rg-no-iam"
  location = "uksouth"
  tags     = {}
}