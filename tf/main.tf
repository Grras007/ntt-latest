terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}


provider "aws" {
  region     = "us-west-2"
  access_key = ""
  secret_key = ""
}


resource "aws_instance" "myec2" {
   ami = "ami-082b5a644766e0e6f"      ## AMI id will change accordingly   region 
   instance_type = "t2.micro"         ## instance_type for the AMI .
}
