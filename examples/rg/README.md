# Terraform resource group module example

## Usage

Init -> Apply

```shell
terraform init

terraform apply --auto-approve
```

```shell
# Example output

Apply complete! Resources: 1 added, 0 changed, 0 destroyed.

Outputs:

resource_group_name = {
  "rg" = {
    "resource_group_id" = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg-no-iam"
    "resource_group_name" = "rg-no-iam"
  }
}
```

```shell
terraform apply -destroy --auto-approve
```
