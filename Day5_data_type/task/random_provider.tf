resource "random_password" "password" {
  length  = var.length
  special = var.special
}

variable "length" {
  type    = number
  default = 16
}

variable "special" {
  type    = bool
  default = true
}

