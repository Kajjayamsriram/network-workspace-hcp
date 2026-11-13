terraform {
    cloud {
      organization = "hcp-workspace"
      workspaces {
        name = "network-workspace"
      }
    }
}
variable "ip" {
  default = ["10.0.0.12", "10.0.0.24"]
  type = set(string)
  description = "List of ip to be allowed"
}

output "ip_list" {
  value = var.ip
}
