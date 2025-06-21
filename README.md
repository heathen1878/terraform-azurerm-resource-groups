# Azure Resource Group module

## Tests

[![Terratest](https://github.com/heathen1878/terraform-azurerm-resource-groups/actions/workflows/module_tests.yaml/badge.svg)](https://github.com/heathen1878/terraform-azurerm-resource-groups/actions/workflows/module_tests.yaml)

## Security

[![Dependabot](https://img.shields.io/badge/dependabot-active-brightgreen?style=flat-square&logo=dependabot)](https://github.com/heathen1878/terraform-azurerm-resource-groups/security/dependabot)


## Examples

- [Resource Group](./examples/rg/README.md)

## Usage

```shell
# Typically nested within another module to manage IAM
module "rg" {

    source ="heathen1878/resource-groups/azurerm"
    version = "4.0.0"

    # Two mandatory parameters
}
```

## v1.0.0

- Manages resource groups

## v2.0.0

- Manages resource group IAM

## v3.0.0

- Changed resource naming
- Added IAM output
- Upgraded provider version to 3.80.0

## v4.0.0

- Manages resource groups within Azure; tends to be nested within other modules
- For IAM use the IAM [module](https://github.com/heathen1878/terraform-azurerm-iam)
- Supports AzureRM 3.92.0 up to AzureRM 4.16.0

## v4.1.0

- Supports AzureRM 3.92.0 up to AzureRM 4.21.0

