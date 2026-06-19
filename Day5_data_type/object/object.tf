resource "local_file" "testfileo1" {
  filename = var.filenameo1.name
  content  = var.filenameo1.address[0]
}

variable "filenameo1" {
  type = object({
    name    = string
    id      = number
    address = list(string)
  })
  default = {
    name    = "adi"
    id      = 4523
    address = ["marthalli", "bangalore"]
  }
}