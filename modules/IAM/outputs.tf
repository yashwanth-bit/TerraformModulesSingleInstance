output "rolename" {
  value = "${aws_iam_role.ec2_role.name}"
}

output "instprofile" {
  value = "${aws_iam_instance_profile.int_profile.name}"
}

output "rolearn" {
  value = "${aws_iam_role.ec2_role.arn}"
}