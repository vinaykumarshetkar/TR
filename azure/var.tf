variable "location" {
  default = "westus"
}

variable "rg_name" {
  default = "tf_rg"
}

variable "address" {
  default = ["10.0.0.0/16", "10.2.0.0/16"]
  type    = list(string)
}
