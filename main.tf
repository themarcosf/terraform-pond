terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  profile = "default"
  region  = "sa-east-1"
}

resource "aws_instance" "private-machine" {
  ami           = "ami-0df032b0fbc220383"
  instance_type = "t2.micro"

  tags = {
    Name = "private-machine"
  }
}