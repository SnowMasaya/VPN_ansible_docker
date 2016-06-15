/* Default security group */
resource "aws_security_group" "default" {
  name = "default-posinega"
  description = "Default security group that allows inbound and outbound traffic from all instance in the VPC"
  # vpc_id = "${aws_vpc.default.id}"
  vpc_id            = "${var.vpc}"

  ingress {
    from_port = "0"
    to_port   = "0"
    protocol  = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port = "0"
    to_port   = "0"
    protocol  = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags {
    Name = "airpair-example-default-vpc"
  }
}

/* Security group for the nat server */
resource "aws_security_group" "nat" {
  name = "nat-posinega"
  description = "Default security group that allows inbound and outbound traffic from all instance in the VPC"
  # vpc_id = "${aws_vpc.default.id}"
  vpc_id            = "${var.vpc}"

  # ssh
  ingress {
    from_port = "22"
    to_port   = "22"
    protocol  = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # openvpn
  ingress {
    from_port = "1194"
    to_port   = "1194"
    protocol  = "udp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # https
  egress {
    from_port = "443"
    to_port   = "443"
    protocol  = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags {
    Name = "nat-vpc"
  }
}

/* Security group for the web */
resource "aws_security_group" "posinega" {
  name = "example"
  description = "Default security group that allows inbound and outbound traffic from all instance in the VPC"
  # vpc_id = "${aws_vpc.default.id}"
  vpc_id            = "${var.vpc}"

  # http
  ingress {
    from_port = "80"
    to_port   = "80"
    protocol  = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # https
  ingress {
    from_port = "443"
    to_port   = "443"
    protocol  = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags {
    Name = "example"
  }
}

