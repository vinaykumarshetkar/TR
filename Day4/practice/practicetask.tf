resource local_file "resource_name" {
    filename = var.filename
    content  = var.content
}

variable "filename" {
    default = "example.txt"
}

variable "content" {
    default = "This is a simple example file."
}



output "output_filename" {
    value = local_file.resource_name.filename
}
output "output_content" {
    value = local_file.resource_name.content
}