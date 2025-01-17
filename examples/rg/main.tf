module "resource_group" {
  source  = "../../"

  name     = var.name
  location = var.location
  tags     = var.tags
}