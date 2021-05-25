output "pubsubnet" {
  value = aws_subnet.pubsubnet.id
}
output "privsubnet" {
  value = aws_subnet.privsubnet.id
}
output "secgrp" {
  value = aws_security_group.secgrp.id
}
