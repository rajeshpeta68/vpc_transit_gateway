resource "aws_internet_gateway" "test-igw-1" {
    vpc_id = aws_vpc.test-vpc-1.id

    tags = {
        Name = "test-igw-1"
    }
  
}

resource "aws_internet_gateway" "test-igw-2" {
    vpc_id = aws_vpc.test-vpc-2.id

    tags = {
        Name = "test-igw-2"
    }
  
}

resource "aws_internet_gateway" "test-igw-3" {
    vpc_id = aws_vpc.test-vpc-3.id

    tags = {
        Name = "test-igw-3"
    }
  
}