terraform {
    cloud {
      organization = "hcp-workspace"
      workspaces {
        name = "network-workspace"
      }
    }
}
variable "ip" {
  default = ["10.0.0.12", "10.0.0.244", "10.0.0.36"]
  type = set(string)
  description = "List of ip to be allowed"
}
#trigger
output "ip_list" {
  value = var.ip
}
