resource "aws_db_instance" "default" {
  allocated_storage    = var.allocated_storage
  storage_type       = "gp2"
  engine            = var.engine
  engine_version     = var.engine_version
  instance_class     = var.instance_class
  db_name            = var.db_name
  username           = var.username
  password           = var.password
  db_subnet_group_name = var.db_subnet_group_name
  vpc_security_group_ids = [var.vpc_security_group_id]

  # Prevent deletion of the DB instance to avoid accidental loss of data
  deletion_protection = true

  tags = {
    Name = "MyRDSInstance"
  }
}

output "rds_endpoint" {
  value = aws_db_instance.default.endpoint
}

output "rds_id" {
  value = aws_db_instance.default.id
}
