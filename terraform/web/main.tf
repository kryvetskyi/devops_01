provider "aws" {
  region = "eu-central-1"
}

variable "name" {
  description = "Name the instance on deploy"
}

resource "aws_instance" "devops_web" {
  ami = "ami-01a2825a801771f57"
  instance_type = "t2.micro"
  key_name = "jenkins"

  tags = {
    Name = "${var.name}"
  }
}