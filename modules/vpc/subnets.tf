resource "aws_subnet" "subnet1-public" {
    count = length(var.v_cidr)
    vpc_id = "${aws_vpc.default.id}"
    cidr_block = "${element(var.v_cidr,count.index )}"
    availability_zone = "${element(var.avl_zones,count.index )}"

    tags = {
        Name = "${var.vpc_name}-Subnet-${count.index+1}"
    }
}