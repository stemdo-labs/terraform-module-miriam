variable "vm_map" {
  type = map(object({
    size           = string
    admin_user     = string
    admin_password = string
  }))
}

variable "location" {
  type = string
}

variable "resource_group_name" {
  type = string
}

variable "subnet_id" {
  type = string
}
