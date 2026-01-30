cat > eks/workers_sg.tf << 'EOF'
resource "aws_security_group" "eks_worker_sg" {
  name        = "eks-worker-sg"
  description = "Security group for EKS worker nodes"
  vpc_id      = var.vpc_id

  ingress {
    description = "Allow all traffic from the cluster"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    security_groups = [var.cluster_security_group_id]
  }

  egress {
    description = "Allow all outbound traffic"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
EOF
