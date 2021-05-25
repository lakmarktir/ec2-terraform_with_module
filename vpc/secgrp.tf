resource "aws_security_group" "secgrp" {
  vpc_id      = aws_vpc.test.id

  ingress {
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = [aws_vpc.test.cidr_block, "0.0.0.0/0"]
#    ipv6_cidr_blocks = [aws_vpc.test.ipv6_cidr_block]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "terrasecgrp"
  }
}

