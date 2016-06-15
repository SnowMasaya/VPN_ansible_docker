output "app.ip" {
  value = "${aws_instance.app.0.private_ip}"
}

output "nat.ip" {
  value = "${aws_instance.nat.public_ip}"
}

