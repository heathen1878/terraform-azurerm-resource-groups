module "resource_groups" {

  source = "../../"

  resource_group_name     = "rg-no-iam"
  resource_group_location = "uksouth"
  resource_group_iam      = {}
  resource_group_tags     = {
        Usage = "Terratest"
        Test  = "No IAM"
      }
}