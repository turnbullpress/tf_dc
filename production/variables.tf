variable "access_key" {
  type = string
  description = "The AWS access key."
}

variable "secret_key" {
  type = string
  description = "The AWS secret key."
}

variable "region" {
  type = string
  description = "The AWS region."
}

variable "environment" {
  type = string
  description = "The name of our environment, i.e. development."
  default = "production"
}

variable "key_name" {
  type = string
  description = "The AWS key pair to use for resources."
}

variable "vpc_cidr" {
  type = string
  description = "The CIDR of the VPC."
}

variable "public_subnets" {
  type = list(string)
  default     = []
  description = "The list of public subnets to populate."
}

variable "private_subnets" {
  type = list(string)
  default     = []
  description = "The list of private subnets to populate."
}

