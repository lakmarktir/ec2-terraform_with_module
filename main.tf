module "vpc" {
  source = "./vpc"
  cidr   = var.cidr 
  pubsubnetcidr = var.pubsubnetcidr
  privsubnetcidr = var.privsubnetcidr
}

module "ec2" {
  source = "./ec2"
  ami           = var.ami
  instance = var.instance
  pubsubnet  = module.vpc.pubsubnet
  secgrp = module.vpc.secgrp
}
module "privec2" {
  source = "./privec2"
  ami           = var.ami
  instance = var.instance
  privsubnet  = module.vpc.privsubnet
  secgrp = module.vpc.secgrp
}

