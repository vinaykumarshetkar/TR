data "azurerm_resource_group" "example" {
  name = "cli_grp"
}
output "id" {
  value = data.azurerm_resource_group.example.id
}
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.77.0"
    }
  }
}

provider "azurerm" {
  features {}
}

