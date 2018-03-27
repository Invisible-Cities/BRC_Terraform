variable "image" {
  default = "JS-API-Featured-Centos7-Feb-13-2018"
}

variable "flavor" {
  default = "m1.tiny"
}

variable "ssh_key_file" {
  default = "~/.ssh/id_rsa.terraform"
}

variable "ssh_user_name" {
  default = "centos"
}

variable "external_gateway" {
}

variable "pool" {
  default = "public"
}
