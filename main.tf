provider "aws" {
  region="ap-south-1"
}

module "my_vpc" {
  source      = "../Modules/vpc" 

}
