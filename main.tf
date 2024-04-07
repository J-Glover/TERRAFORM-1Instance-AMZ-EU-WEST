provider "aws" {
  profile = "default"
  region = "eu-west-2"

}

# Resourses block

resource "aws_instance" "app_server" {

ami = "ami-0c618421e207909d0"
instance_type = "t2.micro"

tags = { name="test_terraform"
}


}