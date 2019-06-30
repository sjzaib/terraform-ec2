# Terraform file to launch compute optimized EC2 instance 
# with 20GB of OS volume i.e. root device and additional
# 100GB of attached data volume

provider "aws" {
  # Put region name of your choice
  region = "us-east-1"
}


resource "aws_instance" "my-instance" {
  #Following AMI is ubuntu 18.04
  ami = "ami-024a64a6685d05041"
  
  # Change availability zone of your choice
  availability_zone = "us-east-1a"
  
  # Change instance type of your choice
  instance_type = "c4.large"
  
  # Enter ssh key name that you created in your AWS account
  key_name = "SSHKEYNAME"

  # Enter subnet id that exist in your availability zone
  subnet_id = "subnet-080ff344223a17a1"

  root_block_device {
    volume_type           = "gp2"
    volume_size           = "20"
    delete_on_termination = "false"
  }

  ebs_block_device {
    device_name           = "/dev/sdb"
    volume_type           = "gp2"
    volume_size           = "100"
  }

  tags = {
    Name = "Terraform-Complex-App1"
  }
}

