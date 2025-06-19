provider "aws" {
  region = var.aws_region
}

resource "aws_s3_bucket" "crispy_disco" {
  bucket = var.bucket_name
  force_destroy = true

  versioning {
    enabled = var.versioning_enabled
  }

  tags = {
    Name        = var.bucket_name
    Environment = var.environment
  }
}

resource "aws_s3_bucket_acl" "crispy_disco_acl" {
  bucket = aws_s3_bucket.crispy_disco.id
  acl    = var.acl
}
