resource "aws_vpc" "vorx-vpc-prod" {
  cidr_block       = "10.0.0.0/16"

  tags = {
    Name = "Vorx-PROD"
  }
}

resource "aws_subnet" "vorx-subnet-pub-1a" {
  vpc_id            = aws_vpc.vorx-vpc-prod.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "us-east-1a"

  tags = {
    Name = "Public-Subnet-1a"
  }
}


resource "aws_subnet" "vorx-subnet-priv-1a" {
  vpc_id            = aws_vpc.vorx-vpc-prod.id
  cidr_block        = "10.0.10.0/24"
  availability_zone = "us-east-1a"

  tags = {
    Name = "Private-Subnet-1a"
  }
}


resource "aws_subnet" "vorx-subnet-pub-1b" {
  vpc_id            = aws_vpc.vorx-vpc-prod.id
  cidr_block        = "10.0.2.0/24"
  availability_zone = "us-east-1b"

  tags = {
    Name = "Public-Subnet-1b"
  }
}


resource "aws_subnet" "vorx-subnet-priv-1b" {
  vpc_id            = aws_vpc.vorx-vpc-prod.id
  cidr_block        = "10.0.20.0/24"
  availability_zone = "us-east-1b"

  tags = {
    Name = "Private-Subnet-1b"
  }
}


## OUTPUTS ##
output "vpc_vorx_prod_id" {
  value = aws_vpc.vorx-vpc-prod.id
}

output "vpc_vorx_prod_arn" {
  value = aws_vpc.vorx-vpc-prod.arn
}

output "vorx_prod_subnet_pub_1a" {
  value = aws_subnet.vorx-subnet-pub-1a.id
}

output "vorx_prod_subnet_priv_1a" {
  value = aws_subnet.vorx-subnet-priv-1a.id
}

output "vorx_prod_subnet_pub_1b" {
  value = aws_subnet.vorx-subnet-pub-1b.id
}

output "vorx_prod_subnet_priv_1b" {
  value = aws_subnet.vorx-subnet-priv-1b.id
}



