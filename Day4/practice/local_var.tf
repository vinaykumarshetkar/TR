locals {
	filename = "test123.txt"
	content ="inside locals"
    file_permission = "0700"
}
		
resource "local_file" "example" {
  filename = local.filename
  content  = local.content
  file_permission = local.file_permission
}

output "test1" {
  value = local.filename
}
output "test2" {
  value = local.content
}
output "test3" {
  value = local.file_permission
}
