resource "aws_instance" "ec2" {
  ami           = var.ami
  instance_type = var.instance
  subnet_id  = var.pubsubnet
  security_groups = [var.secgrp]
  key_name = "terraform"
  associate_public_ip_address = true
  tags = {
    Name = "terrapubinstance"
  }
}
#resource "aws_eip" "ec2eip" {
#  vpc      = true
#}

#  resource "aws_eip_association" "ec2eip_assoc" {
#  instance_id   = var.instance
#  allocation_id = aws_eip.ec2eip.id
#}


