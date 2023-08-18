module "resource_groups" {

  source = "../../"

  resource_group_name     = "rg-iam-reader"
  resource_group_location = "uksouth"
  resource_group_iam      = {
        readers = {
          role_definition_name = "Reader"
          principal_id         = "616308a3-5d87-468a-a1bd-2ed72bbda17b"
        }
  resource_group_tags     = {
        Usage = "Terratest"
        Test  = "IAM Reader"
      }
}
}