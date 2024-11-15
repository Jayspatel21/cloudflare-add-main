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

variable "firefly_env_content" {
  description = "Firefly environment content"
  type        = string
}

variable "dragonfly_env_content" {
  description = "Dragonfly environment content"
  type        = string
}

variable "ssh_key_private" {
  description = "Path to the SSH private key"
  type        = string
}

# variable "firefly_env_path" {
#   type = string
# }

# variable "dragonfly_env_path" {
#   type = string
# }
