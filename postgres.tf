resource "aws_db_instance" "this" {
  allocated_storage = 20
  backup_retention_period = 7
  engine = "postgres"
  engine_version = var.db_version
  identifier = "mydb"
  instance_class = "db.t3.micro"
  multi_az = false
  db_name = var.db_name
  password = var.db_password
  port = 5432
  publicly_accessible = true
  storage_encrypted = true
  storage_type = "gp2"
  username = "mydb"
  skip_final_snapshot = "true"
}