variable "names" {
  type = set(string)
  default = ["vinay","ajay","vijay","vinay","ajay"]
}
output "result" {
  value = var.names
}
variable "ports" {
  type = set(number)
  default = [22,80,443,22,8080  ]
}
output "ports" {
  value = var.ports
}