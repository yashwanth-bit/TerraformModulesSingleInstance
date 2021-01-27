resource "aws_instance" "default" {
  count = "${var.env == "dev" ? 3 : 1}"
  ami           = "${var.ami}"
  instance_type = "${var.instance_type}"
  subnet_id = "${element(var.subnet_list, count.index )}"
  security_groups = ["${var.security_group}"]
  key_name = "AWS-TRAINING-2"
  iam_instance_profile = "${var.int_profile}"
  associate_public_ip_address = "true"

  tags = {
    Name = "${var.env}_Server_${count.index+1}"
  }
}