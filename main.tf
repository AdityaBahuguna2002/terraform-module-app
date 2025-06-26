module "dev-infra" {
    source = "./terra-app"
    env = "dev"
    bucket_name = "my-dev-infra-bucket"
    hash_key = "studentID"
    count_instance = 1
    ec2_ami_id = "ami-0d03cb826412c6b0f"  
    instance_type = "t2.micro"  
    ec2_default_root_storage_size = 10 
}

module "prod-infra" {
    source = "./terra-app"
    env = "prod"
    bucket_name = "my-prod-infra-bucket"
    hash_key = "studentID"
    count_instance = 2
    ec2_ami_id = "ami-0d03cb826412c6b0f"  
    instance_type = "t2.medium" 
    ec2_default_root_storage_size = 10 
}

module "stg-infra" {
    source = "./terra-app"
    env = "stg"
    bucket_name = "my-stg-infra-bucket"
    hash_key = "studentID"
    count_instance = 1
    ec2_ami_id = "ami-0d03cb826412c6b0f" 
    instance_type = "t2.small" 
    ec2_default_root_storage_size = 10  
}