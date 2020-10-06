output "public_dns" {
  value = aws_instance.ubuntu.public_dns
}

output "subnet_id" {
  value = aws_instance.ubuntu.subnet_id
}
