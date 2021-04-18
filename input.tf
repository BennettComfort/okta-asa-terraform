variable "secret_key" {
  default = ""
}

variable "access_key" {
  default = ""
}

variable "oktaasa_team" {
  default = ""
}

variable "oktaasa_key" {
  default = ""
}

variable "oktaasa_secret" {
  default = ""
}


provider "aws" {
  region     = "us-east-2"
  secret_key = var.secret_key
  access_key = var.access_key
}

provider "oktaasa" {
  oktaasa_team   = var.oktaasa_team
  oktaasa_key    = var.oktaasa_key
  oktaasa_secret = var.oktaasa_secret
}

variable "name" {
  type    = string
  default = "ubuntu-terraform-target"
}

variable "environment" {
  type    = string
  default = "terraform"
}

variable "sftd_version" {
  type    = string
  default = "1.44.6"
}

variable "instances" {
  type = number
  default = 3
}

variable "oktaasa_project" {
  description = "Name of the ASA Project"
  default     = "terraform-demo"
}

variable "oktaasa_groups" {
  type    = list(string)
  default = ["Sys-Admins", "DevOps"]
}

