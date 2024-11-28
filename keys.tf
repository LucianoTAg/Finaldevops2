# Reference an existing key pair
variable "existing_key_name" {
  description = "Name of an existing SSH key pair"
  type        = string
}

# No resource is created here; we use the variable in compute.tf
