

# VPC
output "vpc_id" {
  description = "The ID of the VPC"
  value       = module.vpc.vpc_id
}

# Subnets
output "private_subnets" {
  description = "List of IDs of private subnets"
  value       = module.vpc.private_subnets
}

output "public_subnets" {
  description = "List of IDs of public subnets"
  value       = module.vpc.public_subnets
}

output "database_subnets" {
  description = "List of IDs of database subnets"
  value       = module.vpc.database_subnets
}

output "elasticache_subnets" {
  description = "List of IDs of elasticache subnets"
  value       = module.vpc.elasticache_subnets
}

output "redshift_subnets" {
  description = "List of IDs of redshift subnets"
  value       = module.vpc.redshift_subnets
}

output "intra_subnets" {
  description = "List of IDs of intra subnets"
  value       = module.vpc.intra_subnets
}


# NAT gateways
output "nat_public_ips" {
  description = "List of public Elastic IPs created for AWS NAT Gateway"
  value       = module.vpc.nat_public_ips
}

# VPC endpoints
output "vpc_endpoint_ssm_id" {
  description = "The ID of VPC endpoint for SSM"
  value       = module.vpc.vpc_endpoint_ssm_id
}

output "vpc_endpoint_ssm_network_interface_ids" {
  description = "One or more network interfaces for the VPC Endpoint for SSM."
  value       = module.vpc.vpc_endpoint_ssm_network_interface_ids
}

output "vpc_endpoint_ssm_dns_entry" {
  description = "The DNS entries for the VPC Endpoint for SSM."
  value       = module.vpc.vpc_endpoint_ssm_dns_entry
}


output "block_cidr_vpc" {
  value = module.vpc.vpc_cidr_block
}


######################## FARGATE ###############################

output "lb_dns_name" {
  value = module.ecs-fargate-service.lb_dns_name
}


output "lb_sg_arn" {
  value = module.ecs-fargate-service.lb_arn
}


output "lb_arn" {
  value = module.ecs-fargate-service.lb_arn
}



######################### RDS  ###################################

output "rds_password" {
  description = "The rds password"
  value       = random_string.password.result
}
