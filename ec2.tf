module "Dev-ec2" {
  source = "./modules/ec2"
  subnet_list = module.dev_vpc.subnet_list
  security_group = module.dev_vpc.security_group
  ami =  "ami-0a0ad6b70e61be944" # amazon Linux 2 AMI
  instance_type = "t2.nano"
  aws_region = "us-east-2"
  env = "Dev"
  int_profile = "${module.Dev-iam.instprofile}"

}

module "Qa-ec2" {
  source = "./modules/ec2"
  subnet_list = module.Qa_vpc.subnet_list
  security_group = module.Qa_vpc.security_group
  ami =  "ami-03d64741867e7bb94" # Red Hat Enterprise Linux 8
  instance_type = "t2.micro"
  aws_region = "us-east-2"
  env = "Qa"
  int_profile = "${module.Qa-iam.instprofile}"
}

module "Prod-ec2" {
  source = "./modules/ec2"
  subnet_list = module.Prod_vpc.subnet_list
  security_group = module.Prod_vpc.security_group
  ami =  "ami-0a91cd140a1fc148a" # Ubuntu Server 20.04 LTS
  instance_type = "t2.micro"
  aws_region = "us-east-2"
  env = "prod"
  int_profile = "${module.Prod-iam.instprofile}"
}