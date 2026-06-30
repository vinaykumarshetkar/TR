variable "name" {
  type    = list(string)
  default = ["vinay", "ajay"]
}

variable "content" {
  default = "Hello world!!"
}


resource "local_file" "file" {
  count    = length(var.name)
  filename = var.name[count.index]
  for_each = 
  content  = var.content
}