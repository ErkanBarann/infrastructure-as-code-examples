resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "main-vpc"
  }
}

resource "aws_subnet" "public" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "${var.aws_region}a"
  tags = {
    Name = "public-subnet"
  }
}

resource "aws_instance" "web" {
  ami           = "ami-0c55b159cbfafe1f0" # Amazon Linux 2 (Frankfurt)
  instance_type = var.instance_type
  subnet_id     = aws_subnet.public.id

  tags = {
    Name = "web-server"
  }
}
