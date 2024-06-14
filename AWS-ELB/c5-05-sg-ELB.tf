module "classic_load_balancer_sg" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "5.1.2"

  name        = "classic_load_balancer_sg"
  description = "Security group with HTTP port open for everybody (IPv4 CIDR), egress ports are all world open"
  vpc_id      = module.vpc.vpc_id

  # Ingress
  ingress_rules       = ["http-80-tcp"]
  ingress_cidr_blocks = ["0.0.0.0/0"]
  ingress_with_cidr_blocks = [
    {
      from_port   = 81
      to_port     = 81
      protocol    = "tcp"
      description = "Allow Port 81 from internet"
      cidr_blocks = "0.0.0.0/0"
    },
  ]
  # Egress
  egress_rules = ["all-all"]

  tags = local.common_tags
}
