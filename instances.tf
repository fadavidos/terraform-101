# Create a new instance of the latest Ubuntu 14.04 on an
# t2.micro node with an AWS Tag naming it "HelloWorld"
provider "aws" {
  region = "us-east-2"
  access_key = "AKIAIBH2CF52PJYC4BIQ"
  secret_key = "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"
}

resource "aws_instance" "web" {
  ami           = "ami-077eed330bd6aa921"
  instance_type = "t2.micro"
  key_name = "tutoriallinux-aws"

tags = {
    Name = "mi-instancia-terraform"
  }
}