    variable "env" {
        description = "this is the environment name, e.g. dev, staging, prod"
        type = string
    }

    variable "bucket_name" {
        description = "this is the name of the S3 bucket"
        type = string
    }

    variable "hash_key" {
        description = "this is the hash key for the DynamoDB table"
        type = string
    }

    variable "ec2_ami_id" {
        description = "this is the AMI ID for the EC2 instance, e.g. Ubuntu 24.04 LTS, Amazon Linux 2, etc."
        type = string 
    }

    variable "count_instance" {
        description = "this is the number of EC2 instances to create"
        type = number 
    }
    variable "ec2_default_root_storage_size" {
        description = "this is the default root storage size for the EC2 instance in GB"
        type = number   
    }

    variable "instance_type" {
        description = "this is the instance type for the EC2 instance, e.g. t2.micro, t3.micro, etc."
        type = string
    }