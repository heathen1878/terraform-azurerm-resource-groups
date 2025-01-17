variable "name" {
  description = "The name of the resource group"
  type        = string
  validation {
    condition     = can(regex("^[a-zA-Z0-9][a-zA-Z0-9._()\\-]*[^.]$", var.name))
    error_message = "The resource group name must start with a number or letter, and can consist of letters, numbers, underscores, periods, parentheses and hyphens but must not end in a period."
  }
}

variable "location" {
  description = "The location of the resource group"
  type        = string
  validation {
    condition     = can(regex("^[a-z]+(?:[23])?$", var.location))
    error_message = "The location must be a lowercase and constructed using letters a-z; can have an optional number appended too."
  }
}

variable "tags" {
  description = "A map of tags"
  type        = map(any)
  default     = {}
  validation {
    condition     = alltrue([for v in values(var.tags) : can(regex(".*", v))])
    error_message = "All values in the map must be strings"
  }
}