terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
    github = {
      source = "integrations/github"
    }
    #mcaf = {
    #  source = "schubergphilis/mcaf"
    #}
    controltower = {
      source  = "idealo/controltower"
      version = "~> 1.0"
    }
    tfe = {
      source  = "hashicorp/tfe"
      version = ">= 0.25.0"
    }
  }
  required_version = ">= 0.13"
}
