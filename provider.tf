terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 2.0"
    }
  }
  required_version = ">= 0.15.5" // ensure Terraform 0.15.x or greater is used
}

/*  backend "azurerm" {
    resource_group_name  = azurerm_resource_group.myterraformgroup.name
    storage_account_name = azurerm_storage_account.example.name
    container_name       = "tfstate"
    key                  = "dev.terraform.tfstate"
  }
*/

provider "azurerm" {
  features {
    key_vault {
      purge_soft_delete_on_destroy = true
    }
  }
}
