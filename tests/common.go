package test

import (
	"fmt"
	"os"
	"testing"

	"github.com/gruntwork-io/terratest/modules/terraform"
)

type Options map[string]any

func DefaultOptions() Options {
	return Options{
		"resource_group_name"     = "name"
		"resource_group_location" = "location"
		"resource_group_tags" = {
  			"key"  = "value"
		}
	}
}

func (o Options) With(with Options) Options {
	options := o
	for k, v := range with {
		options[k] = v
	}
	return options
}

func (o Options) Without(key string) Options {
	option := o
	delete(option, key)
	return option
}

func Setup(t *testing.T, e string, opts Options) *terraform.Options {
	return &terraform.Options{
		TerraformDir: fmt.Sprintf("../%s", e),
		Vars:         opts,
		BackendConfig: map[string]interface{}{
			"path": "test.tfstate",
		},
		Upgrade: true,
	}
}

func GetTestConfig(t *testing.T) Options {
	t.Helper()

	return Options{
		"resource_group_name"     = os.Getenv("RESOURCE_GROUP_NAME")
		"resource_group_location" = os.Getenv("RESOURCE_GROUP_LOCATION")
		"resource_group_tags" = {
  			"Terratest"  = "True"
		}
	}
}
