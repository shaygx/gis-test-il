resource "aws_route_table" "route_tables" {
  for_each = var.route_table_subnet_map

  vpc_id = var.vpc_id

  tags = {
    Name = each.key  # Use the route table name as the Name tag
  }
}

resource "aws_route_table_association" "associations" {
  for_each = { 
    for route_table_name, subnet_ids in var.route_table_subnet_map : 
    "${route_table_name}-${subnet_ids}" => {
      route_table_name = route_table_name
      subnet_ids       = subnet_ids
    }
  }

  subnet_id      = each.value.subnet_ids
  route_table_id = aws_route_table.route_tables[each.value.route_table_name].id
}
