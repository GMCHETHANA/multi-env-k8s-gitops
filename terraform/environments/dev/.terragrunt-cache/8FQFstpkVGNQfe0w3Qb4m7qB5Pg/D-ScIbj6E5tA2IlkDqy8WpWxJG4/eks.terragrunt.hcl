terraform {
  source = "../../modules/eks"
}

dependency "vpc" {
  config_path = "../dev"
}

inputs = {
  cluster_name = "eks-dev"
  environment  = "dev"
  node_count   = 2
  vpc_id       = dependency.vpc.outputs.vpc_id
  subnet_ids   = dependency.vpc.outputs.private_subnet_ids
}

