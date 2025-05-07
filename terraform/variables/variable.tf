variable "x" {
  default = 100
}

output "x" {
  value = var.x
}

variable "list" {
  default = ["abc","cba", 7]
}

variable "map" {
  default = {
    x = 10
    y = 20
  }
}

output "y" {
  value = var.list
}

output "y_1" {
  value = var.list[1]
}

output "map" {
  value = var.map
}

output "m_1" {
  value = var.map[x]
}

variable "env" {}
variable "name" {}
