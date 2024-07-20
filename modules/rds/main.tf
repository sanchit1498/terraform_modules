resource "aws_db_instance" "rds_instance" {
  instance_identifier = var.instance_identifier
  instance_class      = var.instance_class
  engine              = var.engine
  engine_version      = var.engine_version
  username            = var.username
  password            = var.password
  db_name             = var.db_name
  allocated_storage   = var.allocated_storage

  tags = {
    Name = "${var.my_env}-rds-instance"
    env  = var.my_env
  }
}
