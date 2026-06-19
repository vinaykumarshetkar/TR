resource "local_file" "primitive_data_type" {
  filename = var.filename
  content  = var.content
  file_permission = var.file_permissions
}

resource random_password password {
  length  = var.password_length
  special = var.special
}

variable "filename" {
  type = string
}
variable "content" {
  type = string
}

variable "file_permissions" {
  type = number
}

variable "password_length" {
  type = number
}
variable "special" {
  type = bool
}

output "generated_password" {
  value     = random_password.password.result
  sensitive = true
}