resource "aws_ssm_parameter" "vpc" {
  name  = "/${var.project_name}/vpc/id"
  type  = "String"
  value = aws_vpc.main.id

  tags = {
    Name = "${var.project_name}-vpc-id"
  }
}

resource "aws_ssm_parameter" "public_subnets" {
  count = length(aws_subnet.public)
  name  = "/${var.project_name}/subnets/public/${var.public_subnets[count.index].availability_zone}/${var.public_subnets[count.index].name}"
  type  = "String"
  value = aws_subnet.public[count.index].id

  tags = {
    Name = "${var.project_name}-public-subnet-${count.index}-id"
  }
}


resource "aws_ssm_parameter" "private_subnets" {
  count = length(aws_subnet.private)
  name  = "/${var.project_name}/subnets/private/${var.private_subnets[count.index].availability_zone}/${var.private_subnets[count.index].name}"
  type  = "String"
  value = aws_subnet.private[count.index].id

  tags = {
    Name = "${var.project_name}-private-subnet-${count.index}-id"
  }
}


resource "aws_ssm_parameter" "database_subnets" {
  count = length(aws_subnet.database)
  name  = "/${var.project_name}/subnets/database/${var.database_subnets[count.index].availability_zone}/${var.database_subnets[count.index].name}"
  type  = "String"
  value = aws_subnet.database[count.index].id

  tags = {
    Name = "${var.project_name}-database-subnet-${count.index}-id"
  }
}