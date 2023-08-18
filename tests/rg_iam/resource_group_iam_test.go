package test

import (
	"testing"

	"github.com/gruntwork-io/terratest/modules/terraform"
	"github.com/stretchr/testify/assert"
)

func TestResourceGroupIAM(t *testing.T) {
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
	output := terraform.OutputRequired(t, opts, "resource_group")

	// Check we got something
	if assert.NotNil(t, output) {
		// check the outut equals what we passed in
		assert.Equal(t, "rg-iam-reader", output)
	}
}
