terraform {
    cloud {
      organization = "hcp-workspace"
      workspaces {
        name = "network-workspace"
      }
    }
}
variable "ip" {
  default = ["10.0.0.12", "10.0.0.14", "10.0.0.16"]
  type = set(string)
}

output "ip_list" {
  value = var.ip
}
