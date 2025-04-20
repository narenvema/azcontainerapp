variable "resource_group_name" {}
variable "location" {
  default = "UK South"
}
variable "log_analytics_name" {}
variable "container_app_env_name" {}
variable "container_app_name" {}
variable "image_name" {
  default = "nginx"
}