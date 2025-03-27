# resource "openstack_networking_port_v2" "port_devstack_server" {
#   name       = "port_devstack_server"
#   network_id = openstack_networking_network_v2.network_1.id

#   fixed_ip {
#     subnet_id = openstack_networking_subnet_v2.subnet_1.id
#     ip_address = "192.172.172.100"
#   }
# }
