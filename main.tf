module "dev_infra" {
  source         = "./modules/ec2"
  instance_count = 3
  my_env         = "dev"
  instance_type  = "t2.micro"
  ami            = "ami-09040d770ffe2224f"
}

module "prd_infra" {
  source         = "./modules/ec2"
  instance_count = 3
  my_env         = "prd"
  instance_type  = "t2.medium"
  ami            = "ami-09040d770ffe2224f"
}

module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "demo-vpc"
  cidr = "10.0.0.0/16"

  azs             = ["us-east-2a"]
  private_subnets = ["10.0.1.0/24"]
  public_subnets  = ["10.0.101.0/24"]

  enable_nat_gateway = true
  enable_vpn_gateway = true

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}

module "rds" {
  source              = "./modules/rds"
  instance_identifier = "my-rds-instance"
  instance_class      = "db.t2.micro"
  engine              = "mysql"
  engine_version      = "8.0"
  username            = "admin"
  password            = "password"
  db_name             = "mydb"
  allocated_storage   = 20
  my_env              = "dev"
}
