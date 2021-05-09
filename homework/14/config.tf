provider "aws" {
  region = "us-east-1"
}

variable "subnet_id" {
  default = "subnet-e55050a8"
}

variable "vpc_id" {
  default = "vpc-a44bc6d9"
}
variable "image_id" {
  default = "ami-09e67e426f25ce0d7"
}

resource "aws_key_pair" "myKeyPair4" {
  key_name   = "myKeyPair4"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCxraoOf4g640QLdmid/HOWAZYlGRMDlfDDSVJ+0q763lSJxxev5Chsl/Dh157QtdtvZMVsqYVeANKmwELk8oXmpg6Bf5jvRUmAV3la+/FBN2hkvFRvcSvniLU0D1WWR6HskS2/z5s2IcdyUh/Pp4v64QZTRA52BxSomJLupcJ5iah/YTCQiqvv0LcTaQkQE6ggtDzEfMvQSzzzem5GUoDAVzNsKqYnZLuEfv8z1gWyycoTiOqjqyxT3ajVrq5YtM/83DGTx8zfsTl7YoP+V+YOAK8AhsKyIDkPEiS3VfpPY024n86WwwDBP4U3f3G9k805yIomcGOHQl8EE5qM3OxVycdZqcwCGyp/0+GSzvK10FfTKXjGL/rDggda6N6IVSBAGrM9B2oZziFDk+jfTb1egc+vjjczhmH2u1BkVAKSKTVoHxuO5BjrhazlJYhTw9hU6qW9dsDu7Uc+00O+JfcAeKORih7BHrKmP8W0FM5pIld5HkMfHqvdwPtS5JpM3Bk= root@instance-10-2"
}

resource "aws_security_group" "allow_app_traffic" {
  name        = "allow_traffic"
  vpc_id      = "${var.vpc_id}"

  ingress {
    description = "app from anywhere"
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = "ssh"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["172.31.16.0/20"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

}