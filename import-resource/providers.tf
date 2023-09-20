terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.1"
    }
  }

   backend "azurerm" {
    resource_group_name  = "rg-dev-tf-git"
    storage_account_name = "stgtfgitdev01"
    container_name       = "tfgitstatecontainer"
    key                  = "terraform-az-git.tfstate"
    subscription_id      = "7996db2d-42aa-4deb-b8ac-0c01cf0df187"
  }
}

provider "azurerm" {
  subscription_id      = "7996db2d-42aa-4deb-b8ac-0c01cf0df187"
  tenant_id            = "fc557991-95bd-4c7b-8384-5fbc247b5e11"
  features {}
}
