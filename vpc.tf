resource "aws_vpc" "test-vpc-1" {
    cidr_block = "10.0.0.0/16"
    
    tags = {
        Name = "test-vpc-1"
    }
  
}

resource "aws_vpc" "test-vpc-2" {
    cidr_block = "11.0.0.0/16"
    
    tags = {
        Name = "test-vpc-2"
    }
  
}

resource "aws_vpc" "test-vpc-3" {
    cidr_block = "12.0.0.0/16"
    
    tags = {
        Name = "test-vpc-3"
    }
  
}
