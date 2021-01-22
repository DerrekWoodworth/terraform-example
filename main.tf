terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 2.70"
    }
  }
  backend "s3" {
    bucket = "terraform-example-bfm"
    key    = "terraform-example-repo"
    region = "us-east-1"
  }
}

provider "aws" {
  region  = "us-east-1"
  profile = "staging"
}

resource "aws_instance" "example" {
  ami           = "ami-0885b1f6bd170450c"
  instance_type = "t1.micro"
  subnet_id     = "subnet-03b4732d1f4b3d4f8"
}

