resource "aws_instance" "vpc-1-instance" {
    ami = data.aws_ami.amazon_linux.id
    instance_type = "t3.micro"
    subnet_id = aws_subnet.test-subnet-1.id
    associate_public_ip_address = true

    vpc_security_group_ids = [ aws_security_group.test-sg-1.id ]
    key_name = "base"

    user_data = <<-EOF
      #!/bin/bash
      if command -v dnf >/dev/null 2>&1; then
        dnf install -y httpd
      else
       yum install -y httpd
      fi
      systemctl enable --now httpd
      echo "<h1>Hello from vpc-1-instance</h1>" > /var/www/html/index.html
    EOF


    tags = {
        Name = "vpc-1-instance"
    } 
}

resource "aws_instance" "vpc-2-instance" {
    ami = data.aws_ami.amazon_linux.id
    instance_type = "t3.micro"
    subnet_id = aws_subnet.test-subnet-2.id
    associate_public_ip_address = true

    vpc_security_group_ids = [ aws_security_group.test-sg-2.id ]
    key_name = "base"

    user_data = <<-EOF
      #!/bin/bash
      if command -v dnf >/dev/null 2>&1; then
        dnf install -y httpd
      else
       yum install -y httpd
      fi
      systemctl enable --now httpd
      echo "<h1>Hello from vpc-2-instance</h1>" > /var/www/html/index.html
    EOF


    tags = {
        Name = "vpc-2-instance"
    } 
}

resource "aws_instance" "vpc-3-instance" {
    ami = data.aws_ami.amazon_linux.id
    instance_type = "t3.micro"
    subnet_id = aws_subnet.test-subnet-3.id
    associate_public_ip_address = true

    vpc_security_group_ids = [ aws_security_group.test-sg-3.id ]
    key_name = "base"

    user_data = <<-EOF
      #!/bin/bash
      if command -v dnf >/dev/null 2>&1; then
        dnf install -y httpd
      else
       yum install -y httpd
      fi
      systemctl enable --now httpd
      echo "<h1>Hello from vpc-3-instance</h1>" > /var/www/html/index.html
    EOF


    tags = {
        Name = "vpc-3-instance"
    } 
}