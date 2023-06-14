resource "azurerm_resource_group" "resource_group" {
  for_each = var.resource_groups

  name     = each.value.name
  location = each.value.location
  tags     = each.value.tags

}

resource "azurerm_role_assignment" "resource_group" {
  for_each = local.role_assignment

  scope                = azurerm_resource_group.resource_group[each.value.resource_group_key].id
  role_definition_name = each.value.role_definition_name
  principal_id         = each.value.principal_id

}

locals {

  # Flatten the IAM map and pass to azurerm_role_assignment
  role_assignment = {
    for iam in flatten([
      for key, value in var.resource_groups : [
        for iam_key, iam_value in value.iam : {
          resource_group_key   = key
          iam_key              = iam_key
          role_definition_name = iam_value.role_definition_name
          principal_id         = iam_value.principal_id
        }
      ]
    ]) : format("%s-%s", iam.resource_group_key, iam.iam_key) => iam
  }
}