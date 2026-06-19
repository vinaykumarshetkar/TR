variable "set_length" {
  type = set(string)
}

resource "random_string" "set" {
  for_each = var.set_length

  length  = each.value
  special = true
}