variable "kubeconfig_path" {
  description = "Path to kubeconfig file for the EKS cluster"
  type        = string
}

variable "namespace" {
  description = "Namespace to install Argo CD"
  type        = string
  default     = "argocd"
}

variable "environment" {
  description = "Environment name (dev, staging, prod)"
  type        = string
}
