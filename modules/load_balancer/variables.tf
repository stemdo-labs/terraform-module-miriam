variable "lb_name" {
  type = string
}

variable "lb_public_ip_name" {
  type = string
}

variable "location" {
  type = string
}

variable "resource_group_name" {
  type = string
}

variable "vm_map" {
  type = map(object({
    port = number
  }))
}
