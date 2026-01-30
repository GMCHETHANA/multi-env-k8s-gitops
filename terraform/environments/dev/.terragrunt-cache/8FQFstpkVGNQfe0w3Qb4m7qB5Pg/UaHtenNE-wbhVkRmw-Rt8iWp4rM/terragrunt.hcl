# Tell Terragrunt where the module is
terraform {
  source = "../../modules/vpc"
}

# Input values for this environment
inputs = {
  environment     = "dev"
  region          = "eu-central-1"
  vpc_cidr        = "10.0.0.0/16"
  public_subnets  = ["10.0.1.0/24", "10.0.2.0/24"]
  private_subnets = ["10.0.11.0/24", "10.0.12.0/24"]
}
