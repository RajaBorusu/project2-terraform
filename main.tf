provider "aws" {
region= "ap-south-1"
access_key= "AKIA6GSNG7TSQS3B7CW5"
secret_key= "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"
}

resource "aws_instance" "one" {
ami= "ami-0d0ad8bb301edb745"
instance_type = "t2.medium"
tags= {
Name="terra_instance"
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





