resource "aws_instance" "server-web" {
  ami           = "ami-05611caa865a6b8bf"
  instance_type = "t2.micro"
  key_name        = "ansiblepackerterraform"
  subnet_id = "${aws_subnet.public-subnet.id}"
  vpc_security_group_ids = ["${aws_security_group.sgweb.id}"]
  associate_public_ip_address = true
  source_dest_check = false

 tags {
   Name = "arjun-server-web"
 }
}

resource "aws_instance" "server-db" {
  ami           = "ami-066c7bb7f71ee872b"
  instance_type = "t2.micro"
  key_name        = "ansiblepackerterraform"
  subnet_id = "${aws_subnet.private-subnet.id}"
  vpc_security_group_ids = ["${aws_security_group.sgdb.id}"]
  associate_public_ip_address = true
  source_dest_check = false

 tags {
   Name = "arjun-server-db"
 }
}


output "Web_Server_IP_Public" {
  value = "${aws_instance.server-web.public_ip}"
}
output "Web_Server_IP_Private" {
  value = "${aws_instance.server-web.private_ip}"
}
output "Db_Server_IP_Private" {
  value = "${aws_instance.server-db.private_ip}"
}
output "Db_Server_IP_Public" {
  value = "${aws_instance.server-db.public_ip}"
}
