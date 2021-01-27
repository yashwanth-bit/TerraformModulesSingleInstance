module "Dev-Policy" {
  source = "./modules/IamPolicyAttachment"
  attachrole = "${module.Dev-iam.rolename}"
  policyname = "DevPolicy"
}


module "Qa-Policy" {
  source = "./modules/IamPolicyAttachment"
  attachrole = "${module.Qa-iam.rolename}"
  policyname = "QaPolicy"
}


module "Prod-Policy" {
  source = "./modules/IamPolicyAttachment"
  attachrole = "${module.Prod-iam.rolename}"
  policyname = "ProdPolicy"
}