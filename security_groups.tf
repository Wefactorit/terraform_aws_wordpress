module "http_sg" {
  source = "terraform-aws-modules/security-group/aws"

  name                = "${var.prefix}-${var.application}-${var.env}-${var.region_trigram}-http-sg"
  description         = "Security group for http"
  vpc_id              = module.vpc.vpc_id
  ingress_cidr_blocks = ["0.0.0.0/0"]
  ingress_rules       = ["http-80-tcp", "all-icmp"]
  egress_rules        = ["all-all"]

}



module "rds_sg" {
  source = "terraform-aws-modules/security-group/aws"

  name                = "${var.prefix}-${var.application}-${var.env}-${var.region_trigram}-rds-sg"
  description         = "Security group for http"
  vpc_id              = module.vpc.vpc_id
  ingress_cidr_blocks = [module.vpc.vpc_cidr_block]

  ingress_with_cidr_blocks = [
    {
      rule        = "postgresql-tcp"
      cidr_blocks = module.vpc.vpc_cidr_block
    },
  ]

  egress_with_cidr_blocks = [
    {
      rule        = "postgresql-tcp"
      cidr_blocks = module.vpc.vpc_cidr_block
    },
  ]
}
