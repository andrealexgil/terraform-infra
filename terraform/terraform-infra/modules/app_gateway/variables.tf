variable "app-gateway_name" {
  description = "The name of the application gateway"
  type        = string
  default = "teste_app_load_balancer"
}

variable "app-gateway_subnet" {
  description = "Subnet of the application gateway"
  type        = list(string)
}