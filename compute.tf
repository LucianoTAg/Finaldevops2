resource aws_instance jenkins {
  ami           = ami-0c02fb55956c7d316 # Replace with a valid AMI ID
  instance_type = var.instance_type
  key_name      = var.existing_key_name # Use the existing key pair
  subnet_id     = aws_subnet.main.id
  tags = {
    Name = JenkinsController
  }
}

resource aws_instance testing {
  ami           = ami-0c02fb55956c7d316
  instance_type = var.instance_type
  key_name      = var.existing_key_name
  subnet_id     = aws_subnet.main.id
  tags = {
    Name = TestingInstance
  }
}

resource aws_instance staging {
  ami           = ami-0c02fb55956c7d316
  instance_type = var.instance_type
  key_name      = var.existing_key_name
  subnet_id     = aws_subnet.main.id
  tags = {
    Name = StagingInstance
  }
}

resource aws_instance production {
  count         = var.number_of_instances
  ami           = ami-0c02fb55956c7d316
  instance_type = var.instance_type
  key_name      = var.existing_key_name
  subnet_id     = aws_subnet.main.id
  tags = {
    Name = ProductionInstance-${count.index + 1}
  }
}
