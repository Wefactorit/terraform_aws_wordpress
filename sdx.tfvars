project_name                 = "example"
project_trigramme            = "exp"
region_trigram               = "ew3"
region                       = "eu-west-3"
container_image              = "wordpress:latest"
application                  = "gen"
env                          = "sdx"
container_port               = 8080
container_memory_reservation = 2048
container_memory_allowed     = 4096
container_container_cpu      = 10
owner                        = "Devopsteam"
AppRole                      = "generic_app"
ManagedBy                    = "Devopsteam"
##VPC##
vpc_cidr         = "10.9.16.0/21"
azs              = ["eu-west-3a", "eu-west-3b"]
public_subnets   = ["10.9.16.0/24", "10.9.20.0/24"]
private_subnets  = ["10.9.17.0/24", "10.9.21.0/24"]
database_subnets = ["10.9.19.0/24", "10.9.23.0/24"]

###RDS ###
rds_engine                  = "mysql"
major_engine_version        = "5.7"
rds_port                    = 3306
rds_instance_class          = "db.t2.micro"
rds_allocated_storage       = 20
rds_db_user                 = "generic"
rds_master_name             = "master01"
rds_multi_az                = true
rds_backup_retention_period = 1
