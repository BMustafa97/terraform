module "rds" {
  source  = "terraform-aws-modules/rds/aws"
  version = "6.3.0"
  # insert the 1 required variable here
  identifier = "${var.name}-postgres"

  vpc_security_group_ids = [aws_security_group.allow_rds.id]
  subnet_ids = [var.subnet_id]
  db_subnet_group_name = aws_db_subnet_group.my_db_subnet_group.name

  engine               = "postgres"
  engine_version       = "14"
  family               = "postgres14"
  major_engine_version = "14"         
  instance_class       = "db.t3.micro"
  allocated_storage     = 20
  max_allocated_storage = 100
  db_name  = "${var.environment}postgres"
  username = "postgres"
  port     = 5432
  publicly_accessible = true

  maintenance_window              = "Mon:00:00-Mon:03:00"
  backup_window                   = "03:00-06:00"
  enabled_cloudwatch_logs_exports = ["postgresql", "upgrade"]
  create_cloudwatch_log_group     = true
  backup_retention_period = 1
  skip_final_snapshot     = true
  deletion_protection     = false

  tags = {
    Terraform   = "true"
    Environment = var.environment
  }
  
}

# Subnet Group
resource "aws_db_subnet_group" "my_db_subnet_group" {
  name       = "${var.name}_db_subnet_group"
  subnet_ids = var.db_subnet_id

  tags = {
    Terraform   = "true"
    Environment = var.environment
  }
}


# Security Group
resource "aws_security_group" "allow_rds" {
  name        = "${var.name}-allow_rds"
  description = "Allow RDS inbound traffic"
  vpc_id      = var.vpc_id

  ingress {
    description = "PostgreSQL"
    from_port   = 5432
    to_port     = 5432
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] # change this to your IP/VPN
  }

  egress {
    description = "Allow all outbound traffic"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Terraform   = "true"
    Environment = var.environment
  }

}
