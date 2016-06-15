resource "aws_key_pair" "deployer" {
  key_name = "deploy-key"
  public_key = "${file(\"ssh/insecure-deployer.pub\")}"
}