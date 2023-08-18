output "resource_group_name" {
  description = "Resource group name"
  value       = azurerm_resource_group.resource_group.name
}

output "resource_group_id" {
  description = "Resource group Id"
  value           = azurerm_resource_group.resource_group.id
}
