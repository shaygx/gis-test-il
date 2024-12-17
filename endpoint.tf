resource "aws_vpc_endpoint" "ssm_endpoints" {
  count             = length(var.ssm_endpoint_types)
  vpc_id            = var.vpc_id
  service_name      = "com.amazonaws.${var.region}.${var.ssm_endpoint_types[count.index]}"
  vpc_endpoint_type = "Interface"
  subnet_ids        = var.subnet_ids
  security_group_ids = var.security_group_ids
  private_dns_enabled = true
  tags = {
    Name = "SSM Endpoint - ${var.ssm_endpoint_types[count.index]}"
  }
}

