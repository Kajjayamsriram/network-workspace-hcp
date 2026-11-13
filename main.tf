variable "ip" {
  default = ["10.0.0.12", "10.0.0.14"]
}
output "ip_list" {
  value = var.ip
}
