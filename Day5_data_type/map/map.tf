resource "local_file" "name" {
  filename = var.var1.file_name[0]
  content  = var.var1.content[0]
}

variable "var1" {
  type = map(list(any))
  default = { file_name = ["vinay.txt","ajay.txt "]
    content = ["hello world","welcome"]
  }
}