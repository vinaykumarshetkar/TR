data "local_file" "example" {
  filename = "D:/ABC/TR/Day4/practice/main.tf"
}

output "file_content" {
  value = data.local_file.example.content
}

resource "local_file" "testfile1" {
  filename = join("_", [data.local_file.example.filename, "1"])
  content  = data.local_file.example.content
}
