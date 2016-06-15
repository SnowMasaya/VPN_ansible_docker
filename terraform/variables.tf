variable "access_key" {}
variable "secret_key" {}

variable "region" {
  description = "The AWS region to create things in."
    default = "ap-northeast-1"
}

variable "aws_region_subnet" {
  description = "The AWS region to create things in."
  default = "ap-northeast-1a"
}

variable "vpc" {
  description = "The AWS VPC."
  default     = "10.128.0.0/16"
}

variable "public_subnet_cidr" {
  description = "CIDR for public subnet"
  default     = "10.128.0.0/24"
}

variable "private_subnet_cidr" {
  description = "CIDR for private subnet"
  default     = "10.128.1.0/24"
}

/* Ubuntu 14.04 amis by region */
variable "amis" {
#  default = "ami-eec1c380"
  default = {
      ap-northeast-1 = "ami-1431de75"
  }
}

variable "key_name" {
  description = "Name of the SSH keypair to use in AWS."
  default = "aws.pem"
}
