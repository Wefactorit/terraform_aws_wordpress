resource "random_string" "password" {
  length  = 15
  special = false
  number  = true
}



module "master" {
  source  = "terraform-aws-modules/rds/aws"
  version = "~> 2.0"

  identifier = "${var.application}-master-mysql"

  engine               = var.rds_engine
  engine_version       = var.major_engine_version
  major_engine_version = var.major_engine_version
  instance_class       = var.rds_instance_class
  allocated_storage    = var.rds_allocated_storage

  name     = var.rds_master_name
  username = var.rds_db_user
  password = random_string.password.result
  port     = var.rds_port

  vpc_security_group_ids = [module.rds_sg.this_security_group_id]

  maintenance_window = "Mon:00:00-Mon:03:00"
  backup_window      = "03:00-06:00"

  multi_az = var.rds_multi_az

  # Backups are required in order to create a replica
  backup_retention_period = var.rds_backup_retention_period

  # DB subnet group
  subnet_ids = module.vpc.database_subnets

  create_db_option_group    = false
  create_db_parameter_group = false
}
