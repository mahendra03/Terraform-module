provider "aws" {
  region="ap-south-1"
}

module "my_vpc" {
  source      = "../modules/vpc" 
  vpc_id      = "${module.my_vpc.vpc_id}"

}
