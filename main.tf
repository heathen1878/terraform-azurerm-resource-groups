resource "azurerm_resource_group" "this" {
  name     = var.resource_group_name
  location = var.resource_group_location
  tags     = var.resource_group_tags
}

resource "azurerm_role_assignment" "this" {
  for_each = var.resource_group_iam

  scope                = azurerm_resource_group.this.id
  role_definition_name = each.value.role_definition_name
  principal_id         = each.value.principal_id
}