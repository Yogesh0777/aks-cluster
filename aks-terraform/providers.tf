provider "azurerm" {
  features {}
}

#terraform {
 # required_providers {
  #  azurerm = {
   #   source  = "hashicorp/azurerm"
    #  version = "2.39.0"
    #}
  #}
#}
terraform {
  
required_version = ">= 0.12"
backend "azurerm" {
  storage_account_name = "terraformstorageaccount"
  container_name = "terraform"
  key = "terraform.tfstate"
  access_key = "storagekey"
  features {}
}
}
provider "azurerm"{
version = "~>2.0"
features {}
}
resource "azurerm_resource_group" "dev" {
    name = "pullerraform"
    location = "EastUS"
}
