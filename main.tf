module "resource_group" {
  source     = "./modules/resource-group"
  name       = var.resource_group_name
  location   = var.location
}

module "log_analytics" {
  source              = "./modules/log-analytics"
  name                = var.log_analytics_name
  location            = var.location
  resource_group_name = module.resource_group.name
}

module "container_app_env" {
  source              = "./modules/container-app-env"
  name                = var.container_app_env_name
  location            = var.location
  resource_group_name = module.resource_group.name
  log_analytics_id    = module.log_analytics.workspace_id
}

module "container_app" {
  source                  = "./modules/container-app"
  name                    = var.container_app_name
  location                = var.location
  resource_group_name     = module.resource_group.name
  container_app_env_id    = module.container_app_env.id
  image_name              = var.image_name
}
