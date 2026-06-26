# data "azurerm_resources" "all_rs" {
#     type = "Microsoft.Resources/resourceGroups"

# }

# output "all_res_name" {
#     value = [for rs in data.azurerm_resources.all_rs.resources : rs.name]

# }


# data "azurerm_resources_group" "all_rs" {
#   type = "Microsoft.Resources/resourceGroups"
# }

# output "all_res_name" {
#   value = [for rs in data.azurerm_resources.all_rs.resources : rs.name]
# }


# data "azurerm_resources" "all_rgs" {
#   type = "Microsoft.Resources/resourceGroups"
# }

# output "rg_names" {
#   value = [for rg in data.azurerm_resources.all_rgs.resources : rg.name]
# }

# output "rg_details" {
#   value = [
#     for rg in data.azurerm_resources.all_rgs.resources : {
#       name     = rg.name
#       location = rg.location
#       tags     = rg.tags
#     }
#   ]
# }

/////////////////// Fetch the Virtual Machine details /////////////////


# data "azurerm_resources" "vma" {
#   type = "Microsoft.Compute/virtualMachines"
# }

# output "vm_names" {
#   value = [for vm in data.azurerm_resources.vma.resources : vm.resource_group]
# }

# output "vm_details" {
#   value = [
#     for vm in data.azurerm_resources.vms.resources : {
#       name     = vm.name
#       location = vm.location
#       id       = vm.id
#     }
#   ]
# }


# data "azurerm_resources" "vm" {
#   name                = "docketVM"
#   resource_group_name = "RS_youc"
# }

# data "azurerm_network_interface" "nic" {
#   name                = split("/", data.azurerm_resources.vm.network_interface_ids[0])[8]
#   resource_group_name = "my-rg"
# }

# data "azurerm_public_ip" "pip" {
#   name                = split("/", data.azurerm_network_interface.nic.ip_configuration[0].public_ip_address_id)[8]
#   resource_group_name = "my-rg"
# }

# output "vm_public_ip" {
#   value = data.azurerm_public_ip.pip.ip_address
# }