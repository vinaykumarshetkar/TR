resource "random_string" "random_resource" {
  length  = var.length
  min_numeric = var.min_numeric
}
variable "length" { default = 12 }
variable "min_numeric" { default = 3 }