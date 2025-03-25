resource "openstack_compute_instance_v2" "devstack_server" {
  name              = "devstack_server"
  flavor_id         = var.flavor_id
  availability_zone = var.availability_zone
  user_data = "${local.common_user_data}"

  network {
    port = openstack_networking_port_v2.port_devstack_server.id
  }

  block_device {
    uuid                  = var.image_id
    volume_size           = var.volume_size
    source_type           = "image"
    boot_index            = 0
    destination_type      = "volume"
    delete_on_termination = true
  }
  depends_on = [ openstack_networking_network_v2.network_1 ]
}


resource "openstack_networking_floatingip_associate_v2" "association_devstack" {
  port_id     = openstack_networking_port_v2.port_devstack_server.id
  floating_ip = var.floating_ip_address
}
