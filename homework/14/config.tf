provider "aws" {
  region = "us-east-1"
}

variable "subnet_id" {
  default = "subnet-f85acfg5"
}

variable "vpc_id" {
  default = "vpc-6b1ddh16"
}
variable "image_id" {
  default = "ami-09e67e426f25ce0d7"
}

resource "aws_key_pair" "amazon" {
  key_name   = "amazon"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCxraoOf4g640QLdmid/HOWAZYlGRMDlfDDSVJ+0q763lSJxxev5Chsl/Dh157QtdtvZMVsqYVeANKmwELk8oXmpg6Bf5jvRUmAV3la+/FBN2hkvFRvcSvniLU0D1WWR6HskS2/z5s2IcdyUh/Pp4v64QZTRA52BxSomJLupcJ5iah/YTCQiqvv0LcTaQkQE6ggtDzEfMvQSzzzem5GUoDAVzNsKqYnZLuEfv8z1gWyycoTiOqjqyxT3ajVrq5YtM/83DGTx8zfsTl7YoP+V+YOAK8AhsKyIDkPEiS3VfpPY024n86WwwDBP4U3f3G9k805yIomcGOHQl8EE5qM3OxVycdZqcwCGyp/0+GSzvK10FfTKXjGL/rDggda6N6IVSBAGrM9B2oZziFDk+jfTb1egc+vjjczhmH2u1BkVAKSKTVoHxuO5BjrhazlJYhTw9hU6qW9dsDu7Uc+00O+JfcAeKORih7BHrKmP8W0FM5pIld5HkMfHqvdwPtS5JpM3Bk= root@instance-10-2"
}