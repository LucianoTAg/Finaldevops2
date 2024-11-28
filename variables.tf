variable "instance_type" {
  description = "The type of instance to launch"
  type        = string
  default     = "t2.micro"
}

variable "number_of_instances" {
  description = "Number of instances for the production environment"
  type        = number
  default     = 2
}

variable "existing_key_name" {
  description = "Name of an existing SSH key pair"
  type        = string
}
