variable "allocated_storage" {
  description = "The allocated storage size in gigabytes (GB)"
  default     = 20
}

variable "engine" {
  description = "The database engine to use"
  default     = "mysql"
}

variable "engine_version" {
  description = "The version of the database engine to use"
  default     = "8.0"  # Specify a version available in your region
}

variable "instance_class" {
  description = "The instance class of the RDS instance"
  default     = "db.t2.micro"
}

variable "db_name" {
  description = "The name of the database to create"
}

variable "username" {
  description = "The database admin username"
}

variable "password" {
  description = "The database admin password"
  sensitive = true
}

variable "db_subnet_group_name" {
  description = "The name of the DB subnet group"
}

variable "vpc_security_group_id" {
  description = "VPC security group ID to associate with the RDS instance"
}
