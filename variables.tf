variable "region" {
  description = "The AWS region to deploy to"
  default     = "us-west-2"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  description = "CIDR block for the public subnet"
  default     = "10.0.1.0/24"
}

variable "private_subnet_cidr" {
  description = "CIDR block for the private subnet"
  default     = "10.0.2.0/24"
}

variable "instance_type" {
  description = "EC2 instance type"
  default     = "t2.micro"
}

variable "ami" {
  description = "AMI for the EC2 instance"
  default     = "ami-0c55b159cbfafe1f0"  # Replace with a valid AMI ID in your region
}

variable "bucket_name" {
  description = "S3 Bucket Name"
}

variable "rds_allocated_storage" {
  description = "The allocated storage size for RDS in GB"
  default     = 20
}

variable "rds_engine" {
  description = "The database engine for RDS"
  default     = "mysql"
}

variable "rds_engine_version" {
  description = "The version of the RDS database engine"
  default     = "8.0"  # Specify a version available in your region
}

variable "rds_instance_class" {
  description = "The instance class of the RDS instance"
  default     = "db.t2.micro"
}

variable "rds_db_name" {
  description = "The name of the database to create"
}

variable "rds_username" {
  description = "The database admin username"
}

variable "rds_password" {
  description = "The database admin password"
  sensitive = true
}
