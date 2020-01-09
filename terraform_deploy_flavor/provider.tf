# Configure the OpenStack Provider
provider "openstack" {
  user_name   = var.openstack_user_name
  tenant_name = var.openstack_tenant_name
  password    = var.openstack_password
  auth_url    = var.openstack_auth_url
  region      = "regionOne"
}

# Create a new flavour
resource "openstack_compute_flavor_v2" "test-flavor" {
  name  = "my-flavor2"
  ram   = "8096"
  vcpus = "2"
  disk  = "20"

  extra_specs = {
    "hw:cpu_policy"        = "CPU-POLICY",
    "hw:cpu_thread_policy" = "CPU-THREAD-POLICY"
  }
}
