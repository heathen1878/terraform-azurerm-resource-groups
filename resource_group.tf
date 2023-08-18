resource "azurerm_resource_group" "resource_group" {
  name     = var.resource_group_name
  location = var.resource_group_location
  tags     = var.resource_group_tags
}

resource "azurerm_role_assignment" "resource_group" {
  for_each = var.resource_group_iam

  scope                = azurerm_resource_group.resource_group[each.value.resource_group_key].id
  role_definition_name = each.value.role_definition_name
  principal_id         = each.value.principal_id

}