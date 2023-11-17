# Terraform resource group with IAM module example

## Usage

Init -> Apply

```shell
terraform init

terraform apply --auto-approve -var=principal_id=00000000-0000-0000-0000-000000000000
# Or create a terraform.auto.tfvars with principal_id defined.
```

```shell
# Example output

Apply complete! Resources: 2 added, 0 changed, 0 destroyed.

Outputs:

resource_group_name = {
  "rg" = {
    "IAM" = {
      "readers" = {
        "condition" = ""
        "condition_version" = ""
        "delegated_managed_identity_resource_id" = ""
        "description" = ""
        "id" = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg-iam-reader/providers/Microsoft.Authorization/roleAssignments/00000000-0000-0000-0000-000000000000"
        "name" = "00000000-0000-0000-0000-000000000000"
        "principal_id" = "00000000-0000-0000-0000-000000000000"
        "principal_type" = "Group"
        "role_definition_id" = "/subscriptions/00000000-0000-0000-0000-000000000000/providers/Microsoft.Authorization/roleDefinitions/00000000-0000-0000-0000-000000000000"
        "role_definition_name" = "Reader"
        "scope" = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg-iam-reader"
        "skip_service_principal_aad_check" = tobool(null)
        "timeouts" = null /* object */
      }
    }
    "resource_group_id" = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg-iam-reader"
    "resource_group_name" = "rg-iam-reader"
  }
}

```

```shell
terraform apply -destroy --auto-approve
```
