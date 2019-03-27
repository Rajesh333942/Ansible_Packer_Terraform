resource "aws_security_group" "sgweb" {
  name = "arjun-sg-web"
  description = "Allow incoming HTTP connections & SSH access"

  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks     = ["0.0.0.0/0"]
  }

  vpc_id="${aws_vpc.vpc.id}"

  tags {
    Name = "arjun-sg-web"
  }
}


resource "aws_security_group" "sgdb"{
  name = "arjun-sg-db"
  description = "Allow traffic from public subnet"

  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks     = ["0.0.0.0/0"]
  }

vpc_id="${aws_vpc.vpc.id}"

  tags {
    Name = "arjun-sg-db"
  }
}


