terraform {
  backend "azurerm" {
    resource_group_name  = "tfstate-rg"
    storage_account_name = "andriitfstat"
    container_name       = "tfstate"
    key                  = "aks.terraform.tfstate"
  }
}
