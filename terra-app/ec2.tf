# key pair (login) ---------------------------------
resource "aws_key_pair" "terra-key" {
    key_name = "${var.env}-infra-terra-key"
    public_key = file("terra-key.pub")  
}

# default vpc ---------------------------------
resource "aws_default_vpc" "default" {
  tags = {
    Name = "Default VPC"
  }
}

# security group ---------------------------------
resource "aws_security_group" "terra-sg" {
    vpc_id = aws_default_vpc.default.id  # interpolation
    name = "${var.env}-my-infra-app-terra-sg"
    
    tags = {
      Name = "${var.env}-my-infra-app-terra-sg"
    }
    
    # inbound rules 
    ingress{
            from_port = 22
            to_port = 22
            protocol = "tcp"
            cidr_blocks = ["0.0.0.0/0"] # Allow SSH from anywhere
    }
    ingress {
            from_port = 80
            to_port = 80
            protocol = "tcp"
            cidr_blocks = ["0.0.0.0/0"] # Allow HTTP from anywhere
    }
    ingress{
            from_port = 443
            to_port = 443
            protocol = "tcp"
            cidr_blocks = ["0.0.0.0/0"] # Allow HTTPS from anywhere
    }

    # outbound rules
    egress{
        from_port = 0
        to_port = 0
        protocol = "-1"  # Allow all outbound traffic
        cidr_blocks = ["0.0.0.0/0"]  # Allow all outbound traffic
        description = "Allow all outbound traffic"
    }
}


# ec2 instance creation ----------------------------
resource "aws_instance" "terra-instance" {
    count = "${var.count_instance}"
    depends_on = [ aws_key_pair.terra-key, aws_security_group.terra-sg ]  # Ensure key pair and security group are created before the instance
    # count = 3  # which creates 3 instances 
    ami = var.ec2_ami_id # Ubuntu 24.04 LTS AMI ID
    key_name = aws_key_pair.terra-key.key_name
    security_groups = [ aws_security_group.terra-sg.name ]
    # instance_type = var.ec2_instance_type  # Free tier eligible
    instance_type = var.instance_type  # Use the value from the for_each map
    # user_data = file("./terra-app/install_nginx.sh") # User data script to install Nginx | this is correct way but if someone runs the terraform from another directory of inside it, it will not work
    user_data = file("${path.module}/install_nginx.sh") # relative path to the user data script by module 

    # Configure storage in the aws instance
    root_block_device {
        # volume_size = var.ec2_default_root_storage_size  # Size in GB
        volume_size = var.env == "prod" ? 20 : var.ec2_default_root_storage_size # Conditional size based on environment | ternary operator 
        volume_type = "gp3"  # General Purpose SSD
    }  
    tags = {
        # Name = "terra-instance" # Static name for all instances
        Name = "${var.env}-my-infra-app-instance"  # Use the key from the environment variable
        Environment = var.env
    }  
}    