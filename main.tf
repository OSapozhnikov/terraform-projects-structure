####################################################################################################
# ECS
####################################################################################################
module "sast_ecs" {
  source                 = "./modules/vpc-module"
  project                = var.project_name
  env                    = var.environment_name
  use_ipam_pool          = true
  ipv4_netmask_length    = 24
  aws_availability_zones = ["a", "b"] # You can use approach with 2 or 3 AZs

  tags = local.tags
}

####################################################################################################
# ECS
####################################################################################################
module "sast_ecs" {
  source  = "./modules/ecs-module"
  project = var.project_name
  env     = var.environment_name

  create_aplication_load_balancer = true
  alb_mode                        = "both"

  tags = local.tags
}
