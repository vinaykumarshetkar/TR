resource "local_file" "resource_name" {
  filename = "abc.txt"
  content = "this is the first file"
  lifecycle {
    prevent_destroy = true
  }
}

resource "local_file" "resource_name2" {
  filename = "def.txt"
  content = "this is the second file and it depends on the first file"
  depends_on = [local_file.resource_name]
    lifecycle {
    prevent_destroy = true
  
  }
}

resource "local_file" "resource_name3" {
  filename = "ghi.txt"
  content = local_file.resource_name.id
  depends_on = [local_file.resource_name2]
}