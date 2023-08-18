module "resource_groups" {
  source  = "heathen1878/resource-groups/azurerm"
  version = "1.0.1"

  resource_groups = local.resource_groups
}

locals {
  resource_groups = {
    rg = {
      name     = "rg-iam-reader"
      location = "uksouth"
      iam = {
        readers = {
          role_definition_name = "Reader"
          principal_id         = "616308a3-5d87-468a-a1bd-2ed72bbda17b"
        }
      }
      tags = {
        Usage = "Terratest"
        Test  = "IAM Reader"
      }
    }
  }
}