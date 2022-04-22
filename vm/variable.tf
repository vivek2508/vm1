variable "resource_group_name_prefix" {
  default       = "rg"
  description   = "Prefix of the resource group name that's combined with a random ID so name is unique in your Azure subscription."
}

variable "resource_group_location" {
  default       = "australiaeast"
  description   = "Location of the resource group."
}
variable "random_password_length" {
  description = "The desired length of random password created by this module"
  type        = number
  default     = 24
}
variable "rbac" {
  default = []
  type = list(object({
    principal_id = string
    role         = string
  }))
  description = "Role assignments for principals on the VM."
}
