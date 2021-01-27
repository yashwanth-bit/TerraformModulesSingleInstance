resource "aws_iam_instance_profile" "int_profile" {
  name = "${var.int_profile}"
  role = "${aws_iam_role.ec2_role.name}"
}