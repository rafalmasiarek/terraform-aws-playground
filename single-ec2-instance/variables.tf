variable "instance_name" {
  default = ""
  type    = string
}

variable "sg_name" {
  default = ""
  type    = string
}

variable "region" {
  description = "AWS Region"
  default = "eu-central-1"
}

variable "domain" {
  description = "domain name which EC2 instance will be created"
  type        = string
  default     = ""
}

variable "dns_zone_id" {
  description = "domain name which EC2 instance will be created"
  type        = string
  default     = ""
}

variable "ami" {
  description = "ID of AMI to use for the instance"
  type        = string
  default     = ""
}

variable "key_name" {
  description = "AWS SSH Key name"
}

variable "instance_type" {
  description = "The type of instance to start"
  type        = string
  default     = "t3.micro"
}