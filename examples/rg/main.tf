module "resource_groups" {
  for_each = local.resource_groups

  source  = "../../"

  resource_group_name     = each.value.name
  resource_group_location = each.value.location
  resource_group_iam      = each.value.iam
  resource_group_tags     = each.value.tags

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