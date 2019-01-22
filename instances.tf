# Create a new instance of the latest Ubuntu 14.04 on an
# t2.micro node with an AWS Tag naming it "HelloWorld"
provider "aws" {
  region = "us-east-2"
}

resource "aws_instance" "web" {
  ami = "ami-0125a7e5b2489477a"
  instance_type = "t2.micro"
  key_name = "tutoriallinux-aws"
  user_data = "${data.template_file.user_data.rendered}"
  vpc_security_group_ids = ["sg-08aa7fc768413a010"]

tags = {
    Name = "mi-instancia-terraform"
  }
}
