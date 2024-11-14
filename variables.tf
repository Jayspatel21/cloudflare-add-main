# variables.tf

variable "ami" {
  description = "AMI ID for the EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "Type of EC2 instance"
  type        = string
}

variable "key_name" {
  description = "Name of the SSH key"
  type        = string
}

# variable "firefly_env_path" {
#   type = string
# }

# variable "dragonfly_env_path" {
#   type = string
# }
