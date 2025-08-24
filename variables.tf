variable "project_name" {
  type = string
}

variable "region" {
  type    = string
  default = "us-east-1"
}


variable "vpc_cidr" {
  type        = string
  description = "CIDR PRINCIPAL DA VPC"
  #  default     = "CIDR PRINCIPAL DA VPC"
}


variable "vpc_additional_cidrs" {
  type        = list(string)
  description = "Lista de CIDR's adicionais da VPC"
  default     = []
}