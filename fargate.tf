module "ecs-fargate-service" {
      source              = "cn-terraform/ecs-fargate-service/aws"
      version             = "1.0.9"
      name_preffix        = var.name_preffix
      profile             = var.profile
      region              = var.region
      vpc_id              = module.vpc.vpc_id
      task_definition_arn = module.td.aws_ecs_task_definition_td_arn
      container_port      = module.td.container_port
      container_name      = "${var.name_preffix}-${var.project_name}"
      ecs_cluster_name    = module.ecs-cluster.aws_ecs_cluster_cluster_name
      ecs_cluster_arn     = module.ecs-cluster.aws_ecs_cluster_cluster_arn
      private_subnets     = module.vpc.private_subnets
      public_subnets      = module.vpc.public_subnets
  }


