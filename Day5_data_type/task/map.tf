resource "random_string" "map" {
  for_each = var.employee

  length  = 10
  special = true
}
variable "employee" {
  type = map(string)
    default = {
        dev = "vinay"
        test = "ajay"
        prod = "vijay"
    }
}