resource "aws_instance" "servers" {
  for_each = var.instances

  ami           = each.value.ami
  instance_type = var.instance_type

  tags = {
    Name = each.key
  }
}
