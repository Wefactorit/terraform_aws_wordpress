

/*module "s3_inf" {
  source = "git::https://github.com/terraform-aws-modules/terraform-aws-s3-bucket.git?ref=v1.5.0"

  bucket = "${var.prefix}-gba-${var.application}-${var.env}-inf-s3"
  acl    = "private"

  versioning = {
    enabled = true
  }
}*/





/*module "aws-s3-app" {
  source         = "trussworks/s3-private-bucket/aws"
  bucket         = "${var.name_preffix}-gba-${var.application}-${var.env}-app-s3"
  logging_bucket = module.s3_inf.this_s3_bucket_id

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}*/
