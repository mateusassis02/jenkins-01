terraform {
  required_version = "~> 1.3.1" # 1.3.0 até 1.3.n

}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.22.0"
    }
  }

  backend "s3" {

    bucket  = "terraform-docker02"
    key     = "docker-mateusassis.tfstate"
    region  = "us-east-2"
    encrypt = true
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-2"


  default_tags {
    tags = {
      nome       = "mateusassis02"
      managed-by = "Jenkins"
    }
  }
}

