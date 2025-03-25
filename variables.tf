variable "availability_zone" {
    type = string
    default = "ru-3a"
}

variable "image_id" {
    type = string
    default = "d11304f3-1673-44e8-9672-bb6e6e6ebdd6"
}

variable "volume_size" {
    type = string
    default = "20"
}

variable "floating_ip_address" {
    type = string
    default = "8.80.0.55"
}

variable "flavor_id" {
    type = string
    default = "1002"
}

variable "region" {
    type = string
    default = "ru-3"
}