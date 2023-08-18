variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
  default     = null
}

variable "resource_group_location" {
  description = "The location of the resource group"
  type        = string
  default     = null
}

variable "resource_group_iam" {
  description = "A map of IAM assignment"
  type        = map(any)
  default     = {}
}

variable "resource_group_tags" {
  description = "A map of tags"
  type        = map(any)
  default     = {}
}