package test

import (
	"testing"

	"github.com/gruntwork-io/terratest/modules/azure"
	"github.com/gruntwork-io/terratest/modules/terraform"
	"github.com/stretchr/testify/assert"
)

func TestResourceGroup(t *testing.T) {

	subscriptionID := ""

	opts := &terraform.Options{
		// reference the example folder
		TerraformDir: ".",
	}

	// cleanup at the end of the tests
	// defer ensures Terraform Destroy
	// is ran regardless of a pass or fail
	defer terraform.Destroy(t, opts)

	// init and apply the Terraform
	terraform.InitAndApply(t, opts)

	// get the resource group outputs
	output := terraform.Output(t, opts, "resource_group_name")

	exists := azure.ResourceGroupExists(t, output, subscriptionID)
	assert.True(t, exists, "Resource Group does not exist")

}
