provider "aws" {
    region="us-east-1"
    profile=var.profile
}

resource "aws_instance" "rmq" {
    // choose your amazon machine image
    ami = "ami-052efd3df9dad4825" 

    // free tier instance
    instance_type = "t2.micro" 

    // fill with your ec2 key pair name
    key_name = "" 

    // fill with aws security group with open ports for rabbitmq( like 15672) and an ssh port from your ip if you want
    vpc_security_group_ids = [ "" ] 

    tags = {
        Name = var.name
        group = var.group
    }

}