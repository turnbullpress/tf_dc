provider "aws" {
  region = "${var.region}"
}

terraform {
  backend "s3" {
    region = "us-east-1"
    bucket = "examplecom-remote_state-production"
    key    = "terraform.tfstate"
  }
}

module "vpc" {
  source          = "git@github.com:turnbullpublishing/tf_vpc.git?ref=v0.0.2"
  environment     = "${var.environment}"
  region          = "${var.region}"
  key_name        = "${var.key_name}"
  vpc_cidr        = "${var.vpc_cidr}"
  public_subnets  = ["${var.public_subnets}"]
  private_subnets = ["${var.private_subnets}"]
}
