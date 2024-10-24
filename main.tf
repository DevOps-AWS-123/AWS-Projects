provider "aws" {
  region = var.region
}

module "vpc" {
  source              = "./modules/vpc"
  vpc_cidr           = var.vpc_cidr
  public_subnet_cidr = var.public_subnet_cidr
  private_subnet_cidr = var.private_subnet_cidr
}

module "ec2" {
  source        = "./modules/ec2"
  instance_type = var.instance_type
  ami           = var.ami
  subnet_id     = module.vpc.public_subnet_id
}

module "s3" {
  source       = "./modules/s3"
  bucket_name  = var.bucket_name
}

module "rds" {
  source                = "./modules/rds"
  allocated_storage     = var.rds_allocated_storage
  engine               = var.rds_engine
  engine_version       = var.rds_engine_version
  instance_class       = var.rds_instance_class
  db_name              = var.rds_db_name
  username             = var.rds_username
  password             = var.rds_password
  db_subnet_group_name = module.vpc.db_subnet_group_name
  vpc_security_group_id = module.vpc.db_security_group_id
}

# output "vpc_id" {
#   value = module.vpc.vpc_id
# }

# output "instance_id" {
#   value = module.ec2.instance_id
# }

# output "bucket_name" {
#   value = module.s3.bucket_name
# }

# output "rds_endpoint" {
#   value = module.rds.rds_endpoint
# }

# output "rds_id" {
#   value = module.rds.rds_id
# }
