variable "resource_group_name" {
    type = string
  
}

variable "vnet_name" {
  type = string
}

variable "subnet_name" {
  type = string
  default = "app"
}


variable "vm_names" {
    type = string
  
}

variable "admin_username" {
    type = string
    default = "azureuser"
  
}

variable "application_port" {

    type = number
    default = 80
  
}