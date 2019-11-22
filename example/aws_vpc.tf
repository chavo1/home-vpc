module "consul_vpc" {
  source = "../"

  vpc_net      = var.vpc_net
  private_cidr = var.private_cidr
}