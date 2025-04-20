resource "azurerm_container_app" "ca_app" {
  name                         = var.name
  container_app_environment_id = var.container_app_env_id
  resource_group_name          = var.resource_group_name
  location                     = var.location

  template {
    container {
      name   = "main"
      image  = var.image_name
    }
    scale {
      min_replicas = 1
      max_replicas = 1
    }
  }

  ingress {
    external_enabled = true
    target_port      = 80
    transport        = "auto"
  }
}