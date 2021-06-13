terraform {
  backend "s3" {
    bucket = "aws-terraform-exercises"
    key    = "challange-B1/terraform.tfstate"
    region = "us-west-2"
  }
}
