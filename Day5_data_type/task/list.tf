resource "random_string" "list" {
    count   = 5
  length  = var.length[count.index]
  special = var.special[count.index]
}

variable "length" {
  type = list(number)
}

variable "special" {
  type = list(bool)
}

output "generated_string" {
  value = random_string.list[*].result
}