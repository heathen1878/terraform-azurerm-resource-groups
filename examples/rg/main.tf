module "resource_groups" {
  source  = "heathen1878/resource-groups/azurerm"
  version = "1.0.1"

  resource_groups = local.resource_groups
}

locals {
  resource_groups = {
    rg = {
      name     = "rg-no-iam"
      location = "uksouth"
      iam      = {}
      tags = {
        Usage = "Terratest"
        Test  = "No IAM"
      }
    }
  }
}