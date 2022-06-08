provider "aws" {
  region = "us-west-2"

}

terraform {

  cloud {
    organization = "aws-test-env"

    workspaces {
      name = "testing-tf-cloud"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.13.0"
    }
  }

  required_version = ">= 1.1.0"
}