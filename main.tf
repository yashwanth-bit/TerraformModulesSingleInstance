provider "aws" {
    access_key="xxxxx"
    secret_key="yyyyy"
    region="us-east-2"
}

module "dev_vpc" {
    source = "./modules/vpc"
    vpc_name = "Dev-VPC"
    vpc_cidr = "172.168.0.0/16"
    environment = "Dev"
    IGW_name = "Dev-IGW"
    avl_zones = ["us-east-2a","us-east-2b","us-east-2c"]
    v_cidr =  ["172.168.1.0/24","172.168.3.0/24","172.168.5.0/24"]
    security_group = "Dev-SG"
    Main_Routing_Table = "Dev_RT"
}

module "Qa_vpc" {
    source = "./modules/vpc"
    vpc_name = "Qa-VPC"
    vpc_cidr = "10.142.0.0/16"
    environment = "Qa"
    IGW_name = "Qa-IGW"
    avl_zones = ["us-east-2a","us-east-2b","us-east-2c"]
    v_cidr =  ["10.142.20.0/24","10.142.21.0/24","10.142.22.0/24"]
    security_group = "Qa-SG"
    Main_Routing_Table = "Qa_RT"
}

module "Prod_vpc" {
    source = "./modules/vpc"
    vpc_name = "Prod-VPC"
    vpc_cidr = "152.40.0.0/16"
    environment = "Prod"
    IGW_name = "Prod-IGW"
    avl_zones = ["us-east-2a","us-east-2b","us-east-2c"]
    v_cidr =  ["152.40.90.0/24","152.40.91.0/24","152.40.92.0/24"]
    security_group = "Prod-SG"
    Main_Routing_Table = "Prod_RT"
}



