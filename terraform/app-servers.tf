/* App servers */
resource "aws_instance" "app" {
  count = 1
  ami = "${lookup(var.amis, var.region)}"
  instance_type = "t2.micro"
  subnet_id = "${aws_subnet.private.id}"
  security_groups = ["${aws_security_group.default.id}", "${aws_security_group.posinega.id}"]
  ebs_block_device = {
    device_name = "/dev/sda1"
    volume_type = "standard"
    volume_size = "100"
  }
  key_name = "${aws_key_pair.deployer.key_name}"
  source_dest_check = false
  tags = {
    Name = "app"
  }
}

