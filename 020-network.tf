#### NETWORK CONFIGURATION ####

# Router creation
resource "openstack_networking_router_v2" "generic" {
  name                = "router-generic"
  external_network_id = data.openstack_networking_network_v2.network.id
}

# Network creation
resource "openstack_networking_network_v2" "generic" {
  name = "network-generic"
}

#### HTTP SUBNET ####

# Subnet http configuration
resource "openstack_networking_subnet_v2" "http" {
  name            = var.network_http["subnet_name"]
  network_id      = openstack_networking_network_v2.generic.id
  cidr            = var.network_http["cidr"]
  dns_nameservers = var.dns_ip
}

# Router interface configuration
resource "openstack_networking_router_interface_v2" "http" {
  router_id = openstack_networking_router_v2.generic.id
  subnet_id = openstack_networking_subnet_v2.http.id
}

#### DB SUBNET ####

# Subnet db configuration
resource "openstack_networking_subnet_v2" "db" {
  name            = var.network_db["subnet_name"]
  network_id      = openstack_networking_network_v2.generic.id
  cidr            = var.network_db["cidr"]
  dns_nameservers = var.dns_ip
}

# Router interface configuration
resource "openstack_networking_router_interface_v2" "db" {
  router_id = openstack_networking_router_v2.generic.id
  subnet_id = openstack_networking_subnet_v2.db.id
}
