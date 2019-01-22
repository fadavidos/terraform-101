resource "aws_eip" "eip" {
  instance = "${aws_instance.web.id}"
  vpc      = true
  tags = {
    Name = "eip-terraform"
  }
}