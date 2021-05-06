# ---------------------------------------------------------------------------------------------------------------------
# THESE TEMPLATES REQUIRE TERRAFORM VERSION 0.14 AND ABOVE
# ----------------------------------------------------------------------------------------------

provider "aws" {
  region = "eu-central-1"
}

module "k8s-cluster" {
  source = "./modules/kubernetes"

  cidr_block    = var.cidr_block
  instance_type = "t2.medium"
  key_name      = "midnightops"
}