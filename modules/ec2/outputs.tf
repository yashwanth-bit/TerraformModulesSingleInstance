
output "ec2_name" {
  value = "${aws_instance.default.*.id}"
}