## development-infra outputs

output "dev_instance_type" {
    description = "The instance type for the EC2 instance"
    value       = module.dev-infra.instance_type
}

output "dev_ec2_default_root_storage_size" {
    description = "The instance type for the EC2 instance"
    value       = module.dev-infra.ec2_default_root_storage_size
}

output "dev_count_instance" {
    description = "The number of EC2 instances created"
    value       = module.dev-infra.count_instance    
}

output "dev_ec2_ami_id" {
    description = "The AMI ID for the EC2 instance"
    value       = module.dev-infra.ec2_ami_id    
}

output "dev_hash_key" {
    description = "The hash key for the DynamoDB table"
    value       = module.dev-infra.hash_key      
}

output "dev_bucket_name" {
    description = "The name of the S3 bucket"
    value       = module.dev-infra.bucket_name    
}

output "dev_env" {
    description = "The environment name, e.g. dev, staging, prod"
    value       = module.dev-infra.env    
}

output "dev_instance_public_ips" {
    description = "this is the public IPs of the EC2 instances"
    value = module.dev-infra.public_ip
}

output "dev_instance_private_ips" {
    description = "this is the public IPs of the EC2 instances"
    value = module.dev-infra.private_ip
}

output "dev_instance_public_dns" {
    description = "this is the public IPs of the EC2 instances"
    value = module.dev-infra.public_dns
}

output "dev_s3_bucket_arn" {
  description = "ARN of the S3 bucket"
  value       = module.dev-infra.s3_bucket_arn
}

## Production-infra outputs

output "prod_instance_type" {
    description = "The instance type for the EC2 instance"
    value       = module.prod-infra.instance_type
}

output "prod_ec2_default_root_storage_size" {
    description = "The instance type for the EC2 instance"
    value       = module.prod-infra.ec2_default_root_storage_size
}

output "prod_count_instance" {
    description = "The number of EC2 instances created"
    value       = module.prod-infra.count_instance    
}

output "prod_ec2_ami_id" {
    description = "The AMI ID for the EC2 instance"
    value       = module.prod-infra.ec2_ami_id    
}

output "prod_hash_key" {
    description = "The hash key for the DynamoDB table"
    value       = module.prod-infra.hash_key      
}

output "prod_bucket_name" {
    description = "The name of the S3 bucket"
    value       = module.prod-infra.bucket_name    
}

output "prod_env" {
    description = "The environment name, e.g. dev, staging, prod"
    value       = module.prod-infra.env    
}

output "prod_instance_public_ips" {
    description = "this is the public IPs of the EC2 instances"
    value = module.prod-infra.public_ip
}

output "prod_instance_private_ips" {
    description = "this is the public IPs of the EC2 instances"
    value = module.prod-infra.private_ip
}

output "prod_instance_public_dns" {
    description = "this is the public IPs of the EC2 instances"
    value = module.prod-infra.public_dns
}

output "prod_s3_bucket_arn" {
  description = "ARN of the S3 bucket"
  value       = module.prod-infra.s3_bucket_arn
}

## stagging-infra outputs

output "stg_instance_type" {
    description = "The instance type for the EC2 instance"
    value       = module.stg-infra.instance_type
}

output "stg_ec2_default_root_storage_size" {
    description = "The instance type for the EC2 instance"
    value       = module.stg-infra.ec2_default_root_storage_size
}

output "stg_count_instance" {
    description = "The number of EC2 instances created"
    value       = module.stg-infra.count_instance    
}

output "stg_ec2_ami_id" {
    description = "The AMI ID for the EC2 instance"
    value       = module.stg-infra.ec2_ami_id    
}

output "stg_hash_key" {
    description = "The hash key for the DynamoDB table"
    value       = module.stg-infra.hash_key      
}

output "stg_bucket_name" {
    description = "The name of the S3 bucket"
    value       = module.dev-infra.bucket_name    
}

output "stg_env" {
    description = "The environment name, e.g. dev, staging, prod"
    value       = module.stg-infra.env    
}

output "stg_instance_public_ips" {
    description = "this is the public IPs of the EC2 instances"
    value = module.stg-infra.public_ip
}

output "stg_instance_private_ips" {
    description = "this is the public IPs of the EC2 instances"
    value = module.stg-infra.private_ip
}

output "stg_instance_public_dns" {
    description = "this is the public IPs of the EC2 instances"
    value = module.stg-infra.public_dns
}

output "stg_s3_bucket_arn" {
  description = "ARN of the S3 bucket"
  value       = module.stg-infra.s3_bucket_arn
}