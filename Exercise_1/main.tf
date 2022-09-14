terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }
}

# Get ami id of linux instance
data "aws_ami" "amzlinux" {
  most_recent = true
  owners = ["amazon"]    

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }

}

# TODO: Designate a cloud provider, region, and credentials
provider "aws" {
  region = "us-east-1"
  profile = "default"
}

# TODO: provision 4 AWS t2.micro EC2 instances named Udacity T2
# resource "aws_instance" "Udacity_T2" {
#   count = "4"
#   ami = data.aws_ami.amzlinux.id
#   instance_type = "t2.micro"
#   tags = {
#     Name = "Udacity T2"
#   }
# }


# TODO: provision 2 m4.large EC2 instances named Udacity M4
# resource "aws_instance" "Udacity_M4" {
#   count = "2"
#   ami = data.aws_ami.amzlinux.id
#   instance_type = "m4.large"
#   tags = {
#    Name = "Udacity M4"
#  }
# }
