terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.44.0"
    }
  }
}

provider "aws" {
  profile = "default"
  region = "eu-west-2"
  # Configuration options
}


# Resourses block

resource "aws_instance" "app_server" {

ami = "ami-0c618421e207909d0"
instance_type = "t2.micro"

tags = { name="test_terraform"
}


}
