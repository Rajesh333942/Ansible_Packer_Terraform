
data "aws_ami" "app-ami" {
  most_recent      = true
  executable_users = ["self"]

  filter {
    name   = "owner-alias"
    values = ["amazon"]
  }

  filter {
    name   = "name"
    values = ["app*"]
  }
  owners     = ["self"]
}

data "aws_ami" "dba-ami" {
  most_recent      = true
  executable_users = ["self"]

  filter {
    name   = "owner-alias"
    values = ["amazon"]
  }

  filter {
    name   = "name"
    values = ["dba*"]
  }
  owners     = ["self"]
}

