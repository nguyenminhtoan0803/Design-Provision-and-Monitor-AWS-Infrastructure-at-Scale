provider "aws" {
  region = "us-east-1"
}
 
resource "aws_instance" "udacity-t2" {
  count = "4"
  ami = "ami-0323c3dd2da7fb37d"
  instance_type = "t2.micro"
  tags = {
    name = "Udacity T2"
  }
}

resource "aws_instance" "udacity-m4" {
  count = "2"
  ami = "ami-0323c3dd2da7fb37d"
  instance_type = "m4.large"
  tags = {
    name = "Udacity T4"
  }
}