
/* Public subnet */
resource "aws_subnet" "public" {
  # vpc_id            = "${aws_vpc.default.id}"
  vpc_id            = "${var.vpc}"
  cidr_block        = "${var.public_subnet_cidr}"
  availability_zone = "${var.aws_region_subnet}"
  map_public_ip_on_launch = true
  tags {
    Name = "public"
  }
}

