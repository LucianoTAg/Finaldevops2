# Use the default VPC in AWS
data "aws_vpc" "default" {
  default = true
}

# Create a subnet in the existing VPC
resource "aws_subnet" "main" {
  vpc_id     = data.aws_vpc.default.id
  cidr_block = "10.0.1.0/24" # Adjust CIDR block as necessary
  tags = {
    Name = "DefaultSubnet"
  }
}
