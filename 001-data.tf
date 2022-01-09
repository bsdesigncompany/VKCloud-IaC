data "openstack_images_image_v2" "disk_image" {
  name        = var.image
  most_recent = true
}

data "openstack_networking_network_v2" "network" {
  external = true
}

data "openstack_compute_flavor_v2" "db" {
  name = var.db-instance-flavor
}
