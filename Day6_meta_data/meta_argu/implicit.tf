provider "local" {
  version = "~> 2.0"
  
}

resource "local_file" "file1" {
  filename = "abc.txt"
  content  = "this is my fisrt resource"
}

resource "local_file" "file2" {
  filename = "xyz.txt"
  content  = local_file.file1.id
}

resource "local_file" "file3" {
  filename = "a123.txt"
  content  = local_file.file1.id
}

resource "local_file" "file4" {
  filename = "a123.txt"
  content  = local_file.file2.id
}
