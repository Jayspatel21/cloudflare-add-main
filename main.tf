# terraform {
#   backend "remote" {
#     organization = "Devops_LL"

#     workspaces {
#       name = "cloudflare"
#     }
#   }
#   required_providers {
#     cloudflare = {
#       source  = "cloudflare/cloudflare"
#       version = "~> 3.0"
#     }
#   }
# }

# provider "cloudflare" {
#   api_token = var.cloudflare_api_token
# }

# variable "cloudflare_api_token" {
#   type = string
# }

# variable "zone_id" {
#   type = string
# }

# variable "dns_record_name" {
#   type = string
# }

# variable "dns_record_type" {
#   type = string
#   default = "A"
# }

# variable "dns_record_value" {
#   type = string
# }

# resource "cloudflare_record" "dns_record" {
#   zone_id = var.zone_id
#   name    = var.dns_record_name
#   type    = var.dns_record_type
#   value   = var.dns_record_value
#   ttl     = 1
#   proxied = true
# }


# main.tfasdfghjkhgfdssdfgjkkjhgfewsdfgh

# Define the provider (AWS in this case)

terraform {
  backend "remote" {
    organization = "Testinggg1111"

    workspaces {
      name = "Jackk-11"
    }
  }
}
provider "aws" {
  region = "us-east-1"  # Specify the AWS region
}

# Create an EC2 instance
resource "aws_instance" "my_ec2_instance" {
  ami           = var.ami            # Reference the AMI variable
  instance_type = var.instance_type  # Reference the instance type variable
  key_name      = var.key_name       # Reference the SSH key pair variable

  # Add security group
  security_groups = [aws_security_group.sg.name]

  tags = {
    Name = "MyEC2Instance"
  }
}

# Create a Security Group (SG) for the EC2 instance
resource "aws_security_group" "sg" {
  name        = "my_security_group"
  description = "Allow SSH and HTTP access"
  
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]  # Allow SSH from anywhere
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]  # Allow HTTP from anywhere
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]  # Allow all outbound traffic
  }
}

output "instance_public_ip" {
  value = aws_instance.my_ec2_instance.public_ip
}
