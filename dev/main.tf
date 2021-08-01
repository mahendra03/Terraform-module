provider "aws" {
  region="ap-south-1"
}

module "my_vpc" {
  source      = "../modules/vpc"
  vpc_cidr    = "${module.my_vpc.vpc_id}"
  tenancy     = "default"
  vpc_id      = "${module.my_vpc.vpc_id}"
  subnet_cidr = "192.168.1.0/24"
}
