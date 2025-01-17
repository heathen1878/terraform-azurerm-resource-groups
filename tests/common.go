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
		"name": "name",
		"location": "location",
		"tags": map[string]interface{}{
  			"key": "value",
		},
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
		"name": os.Getenv("RESOURCE_GROUP_NAME"),
		"location": os.Getenv("RESOURCE_GROUP_LOCATION"),
		"tags": map[string]interface{}{
  			"Terratest": "True",
		},
	}
}
