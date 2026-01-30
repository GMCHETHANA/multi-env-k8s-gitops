variable "cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
}

variable "worker_role_arn" {
  description = "IAM role ARN for the worker nodes"
  type        = string
}

variable "subnet_ids" {
  description = "List of subnet IDs for worker nodes"
  type        = list(string)
}

variable "instance_types" {
  description = "EC2 instance types for worker nodes"
  type        = list(string)
  default     = ["t3.medium"]
}

variable "ami_type" {
  description = "AMI type for the worker nodes"
  type        = string
  default     = "AL2_x86_64"
}

variable "desired_capacity" {
  description = "Desired number of worker nodes"
  type        = number
  default     = 2
}

variable "max_size" {
  description = "Maximum number of worker nodes"
  type        = number
  default     = 3
}

variable "min_size" {
  description = "Minimum number of worker nodes"
  type        = number
  default     = 1
}

variable "tags" {
  description = "Additional tags to add to worker nodes"
  type        = map(string)
  default     = {}
}

variable "depends_on" {
  description = "Dependencies for node group creation"
  type        = list(any)
  default     = []
}
