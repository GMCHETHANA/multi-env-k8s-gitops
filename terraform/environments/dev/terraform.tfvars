region          = "eu-north-1"
cluster_name    = "dev-eks-cluster"
cluster_version = "1.32"

private_subnet_ids = [
  "subnet-0628c7575613d7dd1",
  "subnet-09e8fa5ef15441770",
  "subnet-0b5165c1c77b9297a"
]

node_instance_type = "t3.small"
node_desired_size  = 1
node_min_size      = 1
node_max_size      = 2




