terraform {
required_providers {
	aws = {
	source = "hashicorp/aws"
	version = "~>4.16"
}
}
required_version = ">=1.2.0"
}

provider "aws" {
	region = "us-west-2"
}


resource "aws_instance" "ec2_terraform_iac" {
	ami = "ami-0efcece6bed30fd98"
	instance_type = "t2.micro"
	tags = {
	Name = "ec2_instance_using_terraform"
}
}

resource "aws_s3_bucket" "s3_bucket_terraform" {
        bucket = "aws-s3-from-terraform-1234"
	tags = {
        Name = "aws-s3-from-terraform-123"
}
}



output "ec2_public_ips" {
	value = aws_instance.ec2_terraform_iac.public_ip
}


