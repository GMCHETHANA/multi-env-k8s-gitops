variable "region" {
  description = "AWS region"
  type        = string
}

variable "cluster_name" {
  type    = string
}

variable "cluster_version" {
  type    = string
}

variable "private_subnet_ids" {
  type    = list(string)
}


variable "node_instance_type" {
  description = "EC2 instance type for worker nodes"
  type        = string
}

variable "node_desired_size" {
  description = "Desired number of worker nodes"
  type        = number
}

variable "node_min_size" {
  description = "Minimum number of worker nodes"
  type        = number
}

variable "node_max_size" {
  description = "Maximum number of worker nodes"
  type        = number
}





