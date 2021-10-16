# Author:   Barry Davenport
# Date:     16-10-2021
# Purpose:  Learning Terraform with Azure
#
#
#
#
#


# Recommended required_providers block to set the
# Azure Provider source and version
terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "~> 2.65"
    }
  }
  required_version = ">= 0.14.9"
}

# Configure the Azure Provider
provider "azurerm" {
  features {}
}

# Create a resource group
resource "azurerm_resource_group" "rg-arc" {
  name      = "rg-arc"
  location  = "Australia Southeast"
}
