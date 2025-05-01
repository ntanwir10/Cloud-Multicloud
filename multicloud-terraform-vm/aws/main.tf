# Configure the AWS provider with the specified region
provider "aws" {
    region = var.aws_region # The AWS region to deploy resources in, defined as a variable
}

# Define an EC2 instance resource
resource "aws_instance" "free_tier_vm" {
    ami                    = var.ami_id # The Amazon Machine Image (AMI) ID, defined as a variable
    instance_type          = "t2.micro" # Instance type, eligible for AWS free tier
    key_name               = var.key_name # Name of the SSH key pair to access the instance, defined as a variable
    vpc_security_group_ids = [aws_security_group.allow_ssh.id] # Attach the security group allowing SSH access

    # Add tags to the instance for identification
    tags = {
        Name = "Terraform-FreeTier-VM" # Tag to identify the instance
    }
}

# Define a security group to allow SSH access
resource "aws_security_group" "allow_ssh" {
    name        = "allow_ssh" # Name of the security group
    description = "Allow SSH inbound traffic" # Description of the security group

    # Ingress rule to allow inbound SSH traffic
    ingress {
        description = "SSH" # Description of the ingress rule
        from_port   = 22 # Starting port for the rule (SSH port)
        to_port     = 22 # Ending port for the rule (SSH port)
        protocol    = "tcp" # Protocol for the rule (TCP)
        cidr_blocks = ["0.0.0.0/0"] # Allow traffic from any IP address
    }

    # Egress rule to allow all outbound traffic
    egress {
        from_port   = 0 # Starting port for the rule
        to_port     = 0 # Ending port for the rule
        protocol    = "-1" # Protocol for the rule (-1 means all protocols)
        cidr_blocks = ["0.0.0.0/0"] # Allow traffic to any IP address
    }
}
