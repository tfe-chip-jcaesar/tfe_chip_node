terraform {
  required_version = "~> 0.12"

  backend "remote" {
    hostname     = "tfe.aws.shadowmonkey.com"
    organization = "spacelysprockets"

    workspaces {
      name = "tfe_chip_node"
    }
  }
}

provider "aws" {
  alias  = "us-west-1"
  region = "us-west-2"
}

provider "aws" {
  alias  = "eu-central-1"
  region = "eu-central-1"
}
