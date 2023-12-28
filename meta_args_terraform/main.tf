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

locals {
	instance_names = toset(["terraform-ec2-1","terraform-ec2-2","terraform-ec2-3","terraform-ec2-4"])
}

resource "aws_instance" "ec2_terraform_iac" {
        ami = "ami-0efcece6bed30fd98"
        instance_type = "t2.micro"
	for_each = local.instance_names
        tags = {
         Name = each.key
}
}



