provider "aws" {
  region = "eu-west-3"

}


terraform {
  backend "s3" {
    encrypt = false
    bucket  = "test-gba-gen-sdx-inf-s3"
    region  = "eu-west-3"
    key     = "terraform/ci.tfstate"
  }
}
