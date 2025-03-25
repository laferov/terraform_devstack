# Общий скрипт
locals {
  common_user_data = file("data/base.sh")
}

# Уникальные скрипты для каждого инстанса
# locals {
#   bastion_user_data = templatefile("data/bastion.sh", {
#     instance_name = "bastion"
#   })
# }