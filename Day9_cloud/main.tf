terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
}

provider "azurerm" {
  features {}

  client_id       = "895046f8-297d-45a6-93a2-a4840da7c2b3"
  client_secret   = "-0B8Q~TnHGhRemwkCufNGnW1JGYolfTU0aZ5Hdh."
  tenant_id       = "6ec1ec76-f2c0-493c-b014-6b5497983bea"
  subscription_id = "20a282cd-41fe-411d-a64e-1727fb143505"
}

resource "azurerm_resource_group" "rg" {
  name     = "1-rg"
  location = "Central India"
}