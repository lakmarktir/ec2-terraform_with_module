resource "aws_vpc" "test" {
  cidr_block = var.cidr
  tags = {
    Name = "terravpc"
  }
}
