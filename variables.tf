## Account ID
###Project main Configuration#####

variable "prefix" {
  default = "test"
  type    = string
}


variable "vpc_cidr" {
  description = "The CIDR"
  type        = string
}

variable "application" {
  description = "The application name"
  type        = string
}


variable "AppRole" {
  description = "The application role"
  type        = string
}


variable "ManagedBy" {
  description = "The operational team oin this project"
  type        = string
}
variable "env" {
  description = "The targeted environment"
  type        = string
}


variable "owner" {
  description = "The project Owner"
  type        = string
}

variable "project_name" {
  description = "The projectname"
  default     = ""
  type        = string
}

variable "project_trigramme" {
  description = "The project trigram"
  default     = ""
  type        = string
}


variable "region_trigram" {
  description = "the region trigram example ew3 for europe west Paris"
  type        = string
  default     = ""
}





# This file was generated from values defined in rules.tf using update_groups.sh.
###################################
# DO NOT CHANGE THIS FILE MANUALLY
###################################

variable "auto_ingress_rules" {
  description = "List of ingress rules to add automatically"
  type        = list(string)
  default     = ["http-80-tcp"]
}


variable "auto_egress_rules" {
  description = "List of egress rules to add automatically"
  type        = list(string)
  default     = ["all-all"]
}



######### VPC Configuration ##################


variable "vcp_cidr" {
  description = "The VPC cidr block"
  type        = string
  default     = ""
}



variable "vcp_pub_sub_tags" {
  description = "The VPC tags"
  default     = ""
  type        = string
}

variable "azs" {
  description = "The availability_zones for VPC"
  type        = list
  default     = [""]
}

variable "public_subnets" {
  description = "The public CIDR list"
  type        = list
  default     = [""]
}

variable "private_subnets" {
  description = "The private sub net"
  type        = list
  default     = [""]
}



variable "database_subnets" {
  description = "The private sub net"
  type        = list
  default     = [""]
}


variable "redshift_subnets" {
  description = "The redshift subnet"
  type        = list
  default     = [""]
}











##################### ALB Conficguration ##########################

variable "alb_name" {
  description = "The ALB name"
  default     = "alb-name"
  type        = string
}




########################### FARGATE ########################

variable "name_preffix" {
  description = "The prefix used for fargate"
  default     = "btv01"
}

variable "profile" {
  description = "The AWS API KEY to use "
  default     = "gbi-devops-sbx-ops-admin"
}

variable "region" {
  description = "The targeted region "
  default     = "eu-west-3"
}




############################## ECR ########################################

variable "ecr_name" {
  description = "The ECR Repository name"
  default     = "reposdx"
}


variable "log_driver" {
  default     = "awslog"
  description = "The log driver for task definition"
}

locals {
  log_driver = "awslogs"
  log_options = {
    "awslogs-region"        = var.region
    "awslogs-group"         = "/ecs/service/${var.name_preffix}"
    "awslogs-stream-prefix" = "ecs"
  }
}



variable "container_image" {
  description = "The container name"
  default     = ""
}

variable "container_port" {
  description = "Port"
  type        = number
}



variable "container_memory_reservation" {
  description = "The memory reservation"
  type        = number
}

variable "container_memory_allowed" {
  description = "The memory allowed for this task"
  type        = number
}


variable "container_container_cpu" {
  description = "The max CPU  allowed for this task"
  type        = number
}


###########RDS MASTER #################
variable "rds_master_name" {
  description = "The RDS master node name"
  default     = ""
  type        = string
}

variable "rds_engine" {
  description = "The RDS engine "
  type        = string
  default     = ""
}

variable "rds_engine_version" {
  description = "The rds engine version"
  type        = string
}

variable "rds_port" {
  description = "The rds instance port"
  type        = number
}

variable "rds_instance_class" {
  description = "The rds instance class"
  type        = string
}

variable "rds_allocated_storage" {
  description = "The storage reserved for the instance"
  type        = number
}

variable "rds_db_user" {
  description = "The database user"
  type        = string
}



variable "rds_multi_az" {
  description = "The RDS instance multi az configuration"
  default     = false
  type        = bool
}


variable "rds_backup_retention_period" {
  description = "The RDS backup rentention configuration"
  default     = ""
  type        = string
}
