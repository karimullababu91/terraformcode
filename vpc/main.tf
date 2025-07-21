# Create VPC

resource "aws_vpc" "test" {
  cidr_block = var.vpc_cidr 
}

# Create Internet Gateway

resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.test.id
}

# Create Public Subnet

resource "aws_subnet" "public" {
  vpc_id     = aws_vpc.test.id
  cidr_block = var.subnet_public_cidr
}

# Create private subnet

resource "aws_subnet" "private" {
  vpc_id     = aws_vpc.test.id
  cidr_block = var.subnet_private_cidr
}

# Create Route Table and add routes

resource "aws_route_table" "PublicRT" {
  vpc_id = aws_vpc.test.id
  route {
    cidr_block = var.vpc_cidr
    gateway_id = "local"
  }

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }
}

# Create Private Route Table

resource "aws_route_table" "PrivateRT" {
  vpc_id = aws_vpc.test.id
  route {
    cidr_block = var.vpc_cidr
    gateway_id = "local"
  }
}

# Associate Public Subnet to Public RT

resource "aws_route_table_association" "RT" {
  subnet_id      = aws_subnet.public.id
  route_table_id = aws_route_table.PublicRT.id
}

# Associate Private Subnet to Private RT

resource "aws_route_table_association" "Pvt_RT" {
  subnet_id      = aws_subnet.private.id
  route_table_id = aws_route_table.PrivateRT.id
}


