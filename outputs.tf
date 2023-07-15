# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

# Output variable definitions
/*
output "vpc_public_subnets" {
  description = "IDs of the VPC's public subnets"
  value       = module.vpc.public_subnets
}

output "ec2_instance_public_ips" {
  description = "Public IP addresses of EC2 instances"
  value       = module.ec2_instances[*].public_ip
}
*/

output "website_bucket_arn" {
  description = "ARN of the bucket"
  value       = module.website_s3_bucket.arn
}


output "website_bucket_name" {
  description = "Name (id) of the bucket"
  value       = "${module.website_s3_bucket.name}"
}

output "website_bucket_domain" {
  description = "Domain name of the bucket"
  value       = module.website_s3_bucket.domain
}

#https://achaidez-s3-static-website-bucket.s3.us-west-2.amazonaws.com/index.html
#https://achaidez-s3-static-website-bucket.s3.us-west-2.amazonaws.com/index.html

#https://achaidez-s3-static-website-bucket.s3-website-us-west-2.amazonaws.com/index.html

output "website_address" {
  description = "Copy this value to your browser"
  value = "https://${module.website_s3_bucket.name}.${module.website_s3_bucket.domain}/index.html"
}