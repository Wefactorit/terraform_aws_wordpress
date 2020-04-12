module "td" {
  source                       = "cn-terraform/ecs-fargate-task-definition/aws"
  version                      = "1.0.1"
  name_preffix                 = var.name_preffix
  profile                      = var.profile
  region                       = var.region
  container_name               = "${var.name_preffix}-${var.project_name}"
  container_image              = var.container_image
  container_port               = var.container_port
  container_memory_reservation = var.container_memory_reservation
  container_memory             = var.container_memory_allowed

}




resource "aws_cloudwatch_log_group" "ecs" {
  name = "/ecs/service/btv01"
}
