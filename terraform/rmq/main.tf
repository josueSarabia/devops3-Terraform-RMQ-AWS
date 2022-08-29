provider "aws" {
    region="us-east-1"
    profile=var.profile
}

resource "aws_instance" "rmq" {
    ami = "ami-052efd3df9dad4825"
    instance_type = "t2.micro"
    key_name = "devops"
    vpc_security_group_ids = [ "sg-0dee4f6172f74082f" ]

    tags = {
        Name = var.name
        group = var.group
    }

}