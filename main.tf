resource "aws_instance" "demo" {
  ami = var.ami
  instance_type = var.instancetype
  tags = {
    Name =  var.instancename
  }
}



resource "aws_vpc" "name" {
  cidr_block = var.cidr
  tags = {
    Name = var.vpcname
  }
}




resource "random_id" "bucket_suffix" {
  byte_length = 4
}


resource "aws_s3_bucket" "name" {
    bucket = "my-tf-test-bucket-${random_id.bucket_suffix.hex}"
    tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}