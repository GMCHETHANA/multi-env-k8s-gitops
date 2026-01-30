# terraform/environments/dev/terragrunt.hcl

terraform {
  source = "../../modules/eks"
}

inputs = {
  cluster_name               = "dev-eks-cluster"
  cluster_role_arn           = "arn:aws:iam::565837168386:role/eks-cluster-role"  # your cluster role
  vpc_id                     = "vpc-0f818b1c110f2e9b5"                          # VPC containing your subnets
  subnet_ids                 = ["subnet-0628c7575613d7dd1","subnet-09e8fa5ef15441770","subnet-0b5165c1c77b9297a"] # Subnets in same VPC
  cluster_security_group_id  = "sg-xxxxxxxxxxxxxx"   # Replace with your cluster SG
  desired_capacity           = 2
  max_size                   = 3
  min_size                   = 1
  instance_types             = ["t3.medium"]
}






