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

variable "public_subnets" {
  description = "Lista de CIDR's das subnets públicas"
  type = list(object({
    name              = string
    cidr              = string
    availability_zone = string

    # map_public_ip_on_launch = bool
  }))
}


variable "private_subnets" {
  description = "Lista de CIDR's das subnets privadas"
  type = list(object({
    name              = string
    cidr              = string
    availability_zone = string

  }))
}

variable "database_subnets" {
  description = "Lista de CIDR's das subnets privadas de banco de dados"
  default     = []
  type = list(object({
    name              = string
    cidr              = string
    availability_zone = string

  }))
}
