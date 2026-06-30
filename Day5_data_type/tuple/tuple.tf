resource "local_file" "testfilet1" {
  filename = var.filenamet1[0]
  content  = var.filenamet1[1]
}
variable "filenamet1" {
  default = ["test", 123, [1, 2, 3]]
  type    = tuple([string, number, list(number)])
}
