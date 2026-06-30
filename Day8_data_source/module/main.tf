
module "example_m1" {
  source = "./child"
  filename = var.filename1
  content = "Hello from Module 1"
}

module "example_m2" {
  source = "./child"
  filename = "example_m2.txt"
  content = "Hello from Module 2"
}

variable "filename1" { 
    default = "example.txt" 
}