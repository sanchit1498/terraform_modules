variable "instance_identifier" {
  type        = string
  description = "The identifier for the RDS instance"
}

variable "instance_class" {
  type        = string
  description = "The class of the RDS instance"
}

variable "engine" {
  type        = string
  description = "The database engine to use"
}

variable "engine_version" {
  type        = string
  description = "The version of the database engine"
}

variable "username" {
  type        = string
  description = "The username for the RDS instance"
}

variable "password" {
  type        = string
  description = "The password for the RDS instance"
}

variable "db_name" {
  type        = string
  description = "The name of the database"
}

variable "allocated_storage" {
  type        = number
  description = "The allocated storage for the RDS instance in GB"
}

variable "my_env" {
  type        = string
  description = "This will store the environment for the RDS instance"
}
