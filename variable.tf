variable "cidr" {
default = "10.0.0.0/16"
}
variable "pubsubnetcidr" {
default = "10.0.100.0/24"
}
variable "privsubnetcidr" {
default = "10.0.200.0/24"
}
variable "ami"{
default = "ami-09e67e426f25ce0d7"
}
variable "instance"{
default = "t2.micro"
}
