terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
      backend "s3" {
    bucket = "terraform-vpc-bucket-arundev-online"      #create bucket with this name in aws cloud
    key    = "terraform-vpc-bucket-arundev"
    region = "us-east-1"
    dynamodb_table = "terraform-vpc-bucket-arundev-online_db" #create dunamodb lock with this name in aws cloud
  }
}

provider "aws" {
   region = "us-east-1"

}
