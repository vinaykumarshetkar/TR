variable "filename" {
  type    = list(any)
  default = ["vinay", "ajay", "vijay"]
}
variable "content" {
  type    = list(list(string))
  default = [["content1", "content1b", "content2c"], ["content2", "content2b"],["content3", "content3b"]]
}
variable "permission" {
  type    = list(number)
  default = [666, 655, 444]
}
resource local_file testfilename {
  count = length(var.filename)
    filename = var.filename[count.index]
    content = var.content[count.index][0]
  file_permission = var.permission[count.index]
}