terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region  = "eu-central-1"         # Frankfurt
  profile = "Student-474668396358" # Dein SSO-Profilname
}

resource "random_id" "bucket_id" {
  byte_length = 4
}

resource "aws_s3_bucket" "my_research_bucket" {
  bucket        = "mein-bucket-${random_id.bucket_id.hex}"
  force_destroy = true
}


output "bucket_arn" {
  value = aws_s3_bucket.my_research_bucket.arn
}

output "bucket_domain" {
  value = aws_s3_bucket.my_research_bucket.bucket_regional_domain_name
}
