terraform {
  backend "s3" {
    bucket         = "tf-s3-backend-kbcgufxt"
    key            = "pipelines/dev/hello-world-demo"
    region         = "eu-west-1"
    encrypt        = true
    role_arn       = "arn:aws:iam::548616722440:role/tf-s3-backend-tf-role"
    dynamodb_table = "tf-s3-backend-kbcgufxt"
    profile        = "ats"
  }
  required_version = ">= 0.15"
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "3.3.2"
    }
    aws = {
      source  = "hashicorp/aws"
      version = "4.21.0"
    }
  }
}
