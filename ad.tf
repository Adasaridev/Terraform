provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "web" {
tags = {
Name = "Myterraform server"
client = "TCS"
Environment = "Dev"
}

ami = "ami-0d351f1b760a30161"
instance_type = "t3.micro"
key_name = "Tf.kp"
availability_zone = "ap-south-1b"
count = 2
}
