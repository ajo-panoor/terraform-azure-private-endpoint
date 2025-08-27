variable "private_endpoints" {
  type = list(object({
    name                     = optional(string)
    target_resource_id       = optional(string)
    parent_dns_zone          = optional(string)
    target_subresource_names = optional(list(string), ["postgresqlServer"])
  }))
  default = []
}

variable "location" {
  type        = string
  description = "Location where all Private Endponts will be created"
}

variable "resource_group_name" {
  type        = string
  description = "Name of Resource Group to house the Private Endpoints"
}

variable "subnet_id" {
  type        = string
  description = "Name of VNet where the Private Endpoints will be created"
}
