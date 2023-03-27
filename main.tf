

resource "ibm_is_vpc" "vpc" {
  name = var.vpc_name
  tags = var.vpc_tags
}

resource "ibm_container_vpc_worker_pool" "default" {
  count            = var.enable_default_pool_integration == "true" ? 1 : 0
}

variable "enable_default_pool_integration" {
  default = "true"
}
