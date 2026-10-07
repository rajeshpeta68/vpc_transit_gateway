resource "aws_subnet" "test-subnet-1" {
    vpc_id = aws_vpc.test-vpc-1.id
    availability_zone = "ap-south-2a"

    cidr_block = "10.0.1.0/24"

    tags = {
        Name = "test-subnet-1"
    }
  
}

resource "aws_subnet" "test-subnet-2" {
    vpc_id = aws_vpc.test-vpc-2.id
    availability_zone = "ap-south-2b"

    cidr_block = "11.0.1.0/24"

    tags = {
        Name = "test-subnet-2"
    }
  
}

resource "aws_subnet" "test-subnet-3" {
    vpc_id = aws_vpc.test-vpc-3.id
    availability_zone = "ap-south-2c"

    cidr_block = "12.0.1.0/24"

    tags = {
        Name = "test-subnet-3"
    }
  
}
