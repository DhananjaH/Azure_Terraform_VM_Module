
# terraform {
#   required_providers {
#     azurerm = {
#       source = "hashicorp/azurerm"
#       version = "4.35.0"
#     }
#   }
# }

# provider "azurerm" {
#   # Configuration options
#   subscription_id = "052dc29a-a69d-46b6-82fd-1f28d98a0ee7"
#   client_id       = "3a55f56f-c21c-405b-a97f-dc37b5de1abd"
#   client_secret   = "wAT8Q~lxg8TDRgrQNBPGg-fIZBx2bPzsNKHW1ajd"
#   tenant_id       = "dcec579b-994e-4ce8-bf1a-18ee5d238f2a"
#   features {}
# }


provider "azurerm" {
  features {}
  subscription_id                 = "80ea84e8-afce-4851-928a-9e2219724c69"
  # resource_provider_registrations = "none"
  skip_provider_registration = true
}

# locals {
#   rs_name ="Vmtest"
#   location = "central India"
# }

# resource "azurerm_resource_group" "rsg1" {
#   name = local.rs_name
#   location = local.location

# }