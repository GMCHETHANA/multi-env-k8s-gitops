terraform {
  source = "../../modules/argocd"
}

dependency "eks" {
  config_path = "./eks.terragrunt.hcl"
}

inputs = {
  kubeconfig_path = "~/.kube/config"  # or path to your dev cluster kubeconfig
  environment     = "dev"
}
