# Configure the OpenStack Provider
provider "openstack" {
  user_name   = var.openstack_user_name
  tenant_name = var.openstack_tenant_name
  password    = var.openstack_password
  auth_url    = var.openstack_auth_url
  region      = "regionOne"
}
# launch instance Openstack
resource "openstack_compute_instance_v2" "basic" {
  name            = "basic"
  image_id        = "9e2fb267-ecf0-4991-a10f-deba8050d90a"
  flavor_id       = "92dd9b2e-b1c5-49bf-957c-a8f5e7b08b75"
  key_pair        = "Lefteris-laptop"
  security_groups = ["default"]

  metadata = {
    this = "that"
  }

  network {
    name = "BASE"
  }
    network {
    name = "OAM-2905"
  }
}