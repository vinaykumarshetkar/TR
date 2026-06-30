resource "local_file" "testfile" {
  filename = var.filename
  content  = var.content
  }

variable "filename" { default = "example_module.txt" }
variable "content" { default = "Hello, World! from module" }  
