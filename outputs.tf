output "dev-vpc-id" {
  value = "${module.dev_vpc.vpc_id}"
}

output "Dev-internet_gateway_id" {
  value = "${module.dev_vpc.IGW_name}"
}
output "Dev_subnet_list" {
  value = "${module.dev_vpc.subnet_list}"
}
############ Quality ###############################

output "Qa-vpc-id" {
  value = "${module.Qa_vpc.vpc_id}"
}

output "Qa-internet_gateway_id" {
  value = "${module.Qa_vpc.IGW_name}"
}

output "Qa_subnet_list" {
  value = "${module.Qa_vpc.subnet_list}"
}
############ Production ###############################

output "prod-vpc-id" {
  value = "${module.Prod_vpc.vpc_id}"
}

output "prod-internet_gateway_id" {
  value = "${module.Prod_vpc.IGW_name}"
}


output "Prod_subnet_list" {
  value = "${module.Prod_vpc.subnet_list}"
}

output "Dev-ec2" {
  value = "${module.Dev-ec2.ec2_name}"
}

output "Qa-ec2" {
  value = "${module.Qa-ec2.ec2_name}"
}

output "Prod-ec2" {
  value = "${module.Prod-ec2.ec2_name}"
}