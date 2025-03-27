resource "openstack_compute_instance_v2" "devstack_test_server_2" {
  #count             = 3
  #name              = "devstack_test_server-${count.index + 1}"
  name              = "devstack_test_server_2"
  flavor_id         = var.flavor_id
  availability_zone = var.availability_zone

  user_data = local.common_user_data

  network {
    uuid = "7ff0761d-2e5d-41c1-bc53-c224b7611dc6"
  }


  block_device {
    uuid                  = var.image_id
    volume_size           = var.volume_size
    source_type           = "image"
    boot_index            = 0
    destination_type      = "volume"
    delete_on_termination = true
  }
  #depends_on = [selectel_vpc_subnet_v2.subnet_1]
}