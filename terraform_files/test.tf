provider "aws" {
  access_key = "AKIAJLGA77E4CDLMCAKQ"
  secret_key = "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"
  region     = "us-west-2"
}

resource "aws_instance" "infra" {
  ami           = "ami-01e54efb281507b49"
  instance_type = "t2.micro"
  key_name        = "ansiblepackerterraform"
 tags {
   Name = "Testserver"
 }
}

resource "aws_security_group" "allow_ssh" {
  name = "allow_ssh"
   ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_security_group" "allow_eighty" {
  name = "allow_eighty"
   ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_security_group" "allow_eightyeighty" {
  name = "allow_eightyeighty"
   ingress {
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}


output "ip" {
  value = "${aws_instance.infra.public_ip}"
}
