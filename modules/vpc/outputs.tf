output "vpc_id" {
  value = "${aws_vpc.default.id}"
}

output "IGW_name" {
  value = "${aws_internet_gateway.default.id}"
}

output "subnet_list" {
  value = "${aws_subnet.subnet1-public.*.id}"
}

output "security_group" {
  value = "${aws_security_group.allow_all.id}"
}

output "env" {
  value = "${var.environment}"
}