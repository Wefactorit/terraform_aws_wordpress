provider "aws" {
  region = "eu-west-3"

}


### uncomment if you want to use a s3 as backend #####
/*terraform {
  backend "s3" {
    encrypt = false
    region = "eu-west-3"
    key = "terraform/terraform.tfstate"
  }
}*/
