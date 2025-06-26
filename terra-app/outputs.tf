output "instance_type" {
  value = var.instance_type
}

output "ec2_default_root_storage_size" {
  value = var.ec2_default_root_storage_size
}

output "count_instance" {
  value = var.count_instance
}

output "ec2_ami_id" {
  value = var.ec2_ami_id
}

output "hash_key" {
  value = var.hash_key
}

output "bucket_name" {
  value = var.bucket_name
}

output "env" {
  value = var.env
}

output "public_ip" {
  value = aws_instance.terra-instance[*].public_ip
}

output "private_ip" {
  value = aws_instance.terra-instance[*].private_ip
}

output "public_dns" {
#   value = aws_instance.terra-instance.instance_type[*].public_dns
value = aws_instance.terra-instance[*].public_dns
}

output "s3_bucket_arn" {
  value = aws_s3_bucket.my-infra-bucket.arn
}
