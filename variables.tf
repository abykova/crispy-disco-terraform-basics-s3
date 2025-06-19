variable "aws_region" {
  type    = string
  default = "us-east-1"
}

variable "bucket_name" {
  type = string
}

variable "versioning_enabled" {
  type    = bool
  default = true
}

variable "acl" {
  type    = string
  default = "private"
}

variable "environment" {
  type    = string
  default = "dev"
}
