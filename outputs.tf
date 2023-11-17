output "resource_group_name" {
  description = "Resource group name"
  value       = azurerm_resource_group.this.name
}

output "resource_group_id" {
  description = "Resource group Id"
  value       = azurerm_resource_group.this.id
}

output "IAM" {
  value = azurerm_role_assignment.this
}
