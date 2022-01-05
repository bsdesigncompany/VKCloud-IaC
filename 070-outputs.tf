
output "instances_access_ip" {
  value = toset([
    for inst in openstack_compute_instance_v2.http : inst.access_ip_v4
  ])

  #  sensitive = true
}

#output "OS_image_for_install" {
#  value = data.openstack_images_image_v2.image
#}

#networks
output "main_router_id" {
  value       = openstack_networking_router_v2.generic.name
  description = "RouterID of created router"
}


output "http_pool_floating_ip" {
  value = toset([
    for ips in openstack_networking_floatingip_v2.http : ips.address
  ])
  description = "IP addresses of floating ip pool"
}

output "http_pool_fixed_ip" {
  value = toset([
    for ips in openstack_networking_floatingip_v2.http : ips.fixed_ip
  ])
  description = "IP addresses of floating ip pool"
}
