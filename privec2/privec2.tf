resource "aws_instance" "privec2" {
  ami           = var.ami
  instance_type = var.instance
  subnet_id  = var.privsubnet
  security_groups = [var.secgrp]
  key_name = "terraform"
  associate_public_ip_address = false
  tags = {
    Name = "terraprivinstance"
  }
}

