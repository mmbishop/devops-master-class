output "http_server_public_dns" {
  value = aws_instance.http_servers.public_dns
}