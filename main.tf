provider "aws" {
region= "ap-south-1"

}

resource "aws_instance" "one" {
ami= "ami-0d0ad8bb301edb745"
instance_type = "t2.medium"
tags= {
Name="terra_instance"
}
}

resource "aws_instance" "haha" {
ami= "ami-0d0ad8bb301edb745"
instance_type = "t2.medium"
tags= {
Name="burra_instance"
}
}

resource "aws_s3_bucket" "one" {  
bucket = "teju87899-bucket"
}

resource "aws_ebs_volume" "two" {
availability_zone = "ap-south-1a"
size = 40

  tags = {
    Name = "rajaEBS"
  }
}





