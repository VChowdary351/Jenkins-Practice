terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.58.0"
    }
  }
    backend "s3" {
      bucket = "terraform-state-files-locking"
      key    = "sample-jenkins-1"
      region = "us-east-1"
      dynamodb_table = "remote-state-file-locking-roboshop"
  }
}
provider "aws" {
  # Configuration options
  region = "us-east-1"
}