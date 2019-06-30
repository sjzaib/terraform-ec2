# terraform-ec2
Terraform EC2

## Usuage:

1. First create a user on AWS with access policy of "AmazonEC2FullAccess" and generate ACCESS and SECRET keys
2. Create an SSH key from your AWS console and download the private key. Also remember your KEY NAME 
3. Install terrafrom and initalize it 
4. Export your access and secret key in your shell environment 
```
export AWS_ACCESS_KEY_ID="my-access-key"
export AWS_SECRET_ACCESS_KEY="my-secret-key"

```

5. Download this repo and run like this 

```
cd terraform-ec2
terraform plan

```

```
terrafrom apply
``` 


## Sample Run
```
$ terraform apply

An execution plan has been generated and is shown below.
Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # aws_instance.my-instance will be created
  + resource "aws_instance" "my-instance" {
      + ami                          = "ami-024a64a6685d05041"
      + arn                          = (known after apply)
      + associate_public_ip_address  = (known after apply)
      + availability_zone            = "us-east-1d"
      + cpu_core_count               = (known after apply)
      + cpu_threads_per_core         = (known after apply)
      + get_password_data            = false
      + host_id                      = (known after apply)
      + id                           = (known after apply)
      + instance_state               = (known after apply)
      + instance_type                = "c4.large"
      + ipv6_address_count           = (known after apply)
      + ipv6_addresses               = (known after apply)
      + key_name                     = "VDQATEST"
      + network_interface_id         = (known after apply)
      + password_data                = (known after apply)
      + placement_group              = (known after apply)
      + primary_network_interface_id = (known after apply)
      + private_dns                  = (known after apply)
      + private_ip                   = (known after apply)
      + public_dns                   = (known after apply)
      + public_ip                    = (known after apply)
      + security_groups              = (known after apply)
      + source_dest_check            = true
      + subnet_id                    = "subnet-080ff344223a17a1"
      + tags                         = {
          + "Name" = "Terraform-Complex-App1"
        }
      + tenancy                      = (known after apply)
      + volume_tags                  = (known after apply)
      + vpc_security_group_ids       = (known after apply)

      + ebs_block_device {
          + delete_on_termination = true
          + device_name           = "/dev/sdb"
          + encrypted             = (known after apply)
          + iops                  = (known after apply)
          + snapshot_id           = (known after apply)
          + volume_id             = (known after apply)
          + volume_size           = 100
          + volume_type           = "gp2"
        }

      + ephemeral_block_device {
          + device_name  = (known after apply)
          + no_device    = (known after apply)
          + virtual_name = (known after apply)
        }

      + network_interface {
          + delete_on_termination = (known after apply)
          + device_index          = (known after apply)
          + network_interface_id  = (known after apply)
        }

      + root_block_device {
          + delete_on_termination = false
          + iops                  = (known after apply)
          + volume_id             = (known after apply)
          + volume_size           = 20
          + volume_type           = "gp2"
        }
    }

Plan: 1 to add, 0 to change, 0 to destroy.

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

aws_instance.my-instance: Creating...
aws_instance.my-instance: Still creating... [10s elapsed]
aws_instance.my-instance: Still creating... [20s elapsed]
aws_instance.my-instance: Creation complete after 25s [id=i-00b421f111cd31210]

Apply complete! Resources: 1 added, 0 changed, 0 destroyed.

```
