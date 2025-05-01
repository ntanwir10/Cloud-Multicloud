# Define a variable for the AWS region where resources will be created.
# This variable allows users to specify the AWS region where Terraform will deploy resources.
# The "description" parameter provides a brief explanation of the variable's purpose.
# The "default" parameter sets a default value of "us-east-1", which is the AWS region code for US East (N. Virginia).
variable "aws_region" {
  description = "AWS region"
  default     = "us-west-2"
}

# Define a variable for the Amazon Machine Image (AMI) ID.
# This variable specifies the AMI ID to be used for launching EC2 instances.
# The "description" parameter explains that the AMI ID corresponds to Ubuntu 20.04 in the selected region.
# The "default" parameter provides a pre-configured AMI ID for Ubuntu 20.04 in the "us-west-2" region.
variable "ami_id" {
  description = "AMI ID for Ubuntu 20.04 in the selected region"
  default     = "ami-07b0c09aab6e66ee9" # Ubuntu 20.04 in us-west-2
}

# Define a variable for the name of the SSH key pair to be used for accessing the instance.
# This variable is required and must be provided by the user as a string.
# The "description" parameter explains that the variable represents the name of the SSH key pair.
# The "type" parameter enforces that the value must be a string.
variable "key_name" {
  description = "terraMultiCloud"
  type        = string
}


