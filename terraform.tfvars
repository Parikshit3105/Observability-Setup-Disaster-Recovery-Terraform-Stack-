# terraform.tfvars

observability_server     = "Observability-DR-Drill"
region                   = "eu-west-1"                                                                  # Define the region
ami                      = "ami-0a69d6d3xxxxxxxxxxxx"                                                   # Define the AMI of the Server
key_pair_name            = "terraform.drill"                                                            # Add your key pair name here                                                    
instance_type            = "t3a.medium"                                                                 # Defin the instance Type
private_subnet_id_A      = "subnet-xxxxxxxxxxxxxxxxx"                                                   # Defin the Private Subnet
public_subnit_id_A       = "subnet-xxxxxxxxxxxxxxxxx"                                                   # Defin the Private Subnet
public_subnit_id_B       = "subnet-xxxxxxxxxxxxxxxxx"                                                   # Defin the Private Subnet
public_subnit_id_C       = "subnet-xxxxxxxxxxxxxxxxx"                                                   # Defin the Private Subnet
vpc_id                   = "vpc-xxxxxxxxxxxxxxxxxxxx"                                                   # Defin the VPC Id
vpc_cidr                 = "172.31.0.0/16"                                                              # Defin the VPC CIDR Range
iam_instance_profile_arn = "arn:aws:iam::1234567890:instance-profile/SSM"                               # Defin the ARN of the SSM Role



