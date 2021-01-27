module "Dev-iam" {
  source = "./modules/IAM"
  role_name = "Dev_IAM"
  env = "${module.dev_vpc.env}"
  int_profile = "Dev-Profile"
}


module "Qa-iam" {
  source = "./modules/IAM"
  role_name = "Qa_IAM"
  env = "${module.dev_vpc.env}"
  int_profile = "Qa-Profile"
}


module "Prod-iam" {
  source = "./modules/IAM"
  role_name = "Prod_IAM"
  env = "${module.dev_vpc.env}"
  int_profile = "Prod-Profile"
}