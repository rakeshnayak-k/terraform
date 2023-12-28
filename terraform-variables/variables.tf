variable "filename" {
	default = "/home/ubuntu/terraform-files/terraform-variables/devops-automated.txt"
}

variable "content" {
	default = "This is auto generated from variable"
}

variable "devops_op_trainer" {}

variable "content_map" {
type = map
default = {
"content1" = "This is content1 from variable.tf file"
"content2" = "This is content2 from variable.tf file"
}
}

variable "file_list" {
type = list 
default = ["/home/ubuntu/terraform-files/terraform-variables/file1.txt","/home/ubuntu/terraform-files/terraform-variables/file2.txt"]
}

variable "aws_ec2_object" {
type = object({
	name = string
	instances = number
	keys = list(string)
	ami = string	
})
default = {
	name = "test_ec2_instance"
        instances = 3
        keys = ["key1.pem", "key2.pem"]
        ami = "ubuntu-afed34"
}
}

variable "no_of_students" {}


