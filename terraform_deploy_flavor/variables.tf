variable "openstack_user_name" {
  description    = "The username for the Tenant."
  default = "admin"
}
variable "openstack_tenant_name" {
  description    = "The username for the Tenant."
  default = "admin"
}


variable "openstack_password" {
  description    = "The password for the Tenant."
  default = "admin"
}

variable "openstack_auth_url" {
  description    = "The URL of openstack."
}