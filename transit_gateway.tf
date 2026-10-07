resource "aws_ec2_transit_gateway" "tg-vpc1-vpc2-vpc3" {
    description = "tgw for vpc-1 vpc-2 vpc-3"
    #default_route_table_association = "disable"
    #default_route_table_propagation = "disable"
    #dns_support = "enable"

    tags = {
        Name = "tg-vpc1-vpc2-vpc3"
    }  
}

resource "aws_ec2_transit_gateway_vpc_attachment" "tg-1-vpc-atcmnt" {

    transit_gateway_id = aws_ec2_transit_gateway.tg-vpc1-vpc2-vpc3.id
    vpc_id = aws_vpc.test-vpc-1.id
    subnet_ids = [ aws_subnet.test-subnet-1.id ]

    #transit_gateway_default_route_table_association = false
    #transit_gateway_default_route_table_propagation = false

    tags = {
        Name = "tg-1-vpc-atcmnt"
    }
  
}

resource "aws_ec2_transit_gateway_vpc_attachment" "tg-2-vpc-atcmnt" {

    transit_gateway_id = aws_ec2_transit_gateway.tg-vpc1-vpc2-vpc3.id
    vpc_id = aws_vpc.test-vpc-2.id
    subnet_ids = [ aws_subnet.test-subnet-2.id ]

    #transit_gateway_default_route_table_association = false
    #transit_gateway_default_route_table_propagation = false

      tags = {
        Name = "tg-2-vpc-atcmnt"
    }
  
}

resource "aws_ec2_transit_gateway_vpc_attachment" "tg-3-vpc-atcmnt" {

    transit_gateway_id = aws_ec2_transit_gateway.tg-vpc1-vpc2-vpc3.id
    vpc_id = aws_vpc.test-vpc-3.id
    subnet_ids = [ aws_subnet.test-subnet-3.id ]

    #transit_gateway_default_route_table_association = false
    #transit_gateway_default_route_table_propagation = false

      tags = {
        Name = "tg-3-vpc-atcmnt"
    }
  
}