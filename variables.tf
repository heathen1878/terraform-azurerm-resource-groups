variable "resource_groups" {
  description = "A map of resource group attributes"
  default     = {}
  type = map(object(
    {
      name     = string
      location = string
      tags     = map(any)
      iam = optional(map(object(
        {
          role_definition_name = string
          principal_id       = string
        }
      )), {})
    }
  ))
}