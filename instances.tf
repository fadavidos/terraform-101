# Create a new instance of the latest Ubuntu 14.04 on an
# t2.micro node with an AWS Tag naming it "HelloWorld"
provider "aws" {
  region = "${var.region}"
}

resource "aws_instance" "web" {
  ami = "${var.ami}"
  instance_type = "${var.instance_type}"
  key_name = "${var.key_name}"
  user_data = "${data.template_file.user_data.rendered}"
  vpc_security_group_ids = ["${var.vpc_security_group_ids}"]

tags = {
    Name = "${var.nombreInstancia}"
  }
}
