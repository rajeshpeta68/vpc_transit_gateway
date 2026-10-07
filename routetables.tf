resource "aws_route_table" "test-rt-1" {
    vpc_id = aws_vpc.test-vpc-1.id

    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.test-igw-1.id
    }

    #route {
    #    cidr_block = aws_vpc.test-vpc-1.id
    #    transit_gateway_id = aws_ec2_transit_gateway.tg-vpc1-vpc2-vpc3.id
    #}

    route {
        cidr_block = aws_vpc.test-vpc-2.cidr_block
        transit_gateway_id = aws_ec2_transit_gateway.tg-vpc1-vpc2-vpc3.id
    }

    route {
        cidr_block = aws_vpc.test-vpc-3.cidr_block
        transit_gateway_id = aws_ec2_transit_gateway.tg-vpc1-vpc2-vpc3.id
    }

    tags = {
        Name = "test-rt-1"
    }
  
}

resource "aws_route_table_association" "test-rt-ascn-1" {
    subnet_id = aws_subnet.test-subnet-1.id
    route_table_id = aws_route_table.test-rt-1.id
  
}


resource "aws_route_table" "test-rt-2" {
    vpc_id = aws_vpc.test-vpc-2.id

    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.test-igw-2.id
    }

    route {
        cidr_block = aws_vpc.test-vpc-1.cidr_block
        transit_gateway_id = aws_ec2_transit_gateway.tg-vpc1-vpc2-vpc3.id
    }

    route {
        cidr_block = aws_vpc.test-vpc-3.cidr_block
        transit_gateway_id = aws_ec2_transit_gateway.tg-vpc1-vpc2-vpc3.id
    }

    tags = {
        Name = "test-rt-2"
    }
  
}

resource "aws_route_table_association" "test-rt-ascn-2" {
    subnet_id = aws_subnet.test-subnet-2.id
    route_table_id = aws_route_table.test-rt-2.id
  
}

resource "aws_route_table" "test-rt-3" {
    vpc_id = aws_vpc.test-vpc-3.id

    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.test-igw-3.id
    }

    route {
        cidr_block = aws_vpc.test-vpc-1.cidr_block
        transit_gateway_id = aws_ec2_transit_gateway.tg-vpc1-vpc2-vpc3.id
    }

    route {
        cidr_block = aws_vpc.test-vpc-2.cidr_block
        transit_gateway_id = aws_ec2_transit_gateway.tg-vpc1-vpc2-vpc3.id
    }

    tags = {
        Name = "test-rt-3"
    }
  
}

resource "aws_route_table_association" "test-rt-ascn-3" {
    subnet_id = aws_subnet.test-subnet-3.id
    route_table_id = aws_route_table.test-rt-3.id
  
}
