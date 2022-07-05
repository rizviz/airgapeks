variable "prefix" {
  default     = "airgap-eks"
  description = "Common AWS Resource prefix"
}

variable "aws_region" {
  default     = "us-east-1"
  description = "AWS Region to deploy VPC"
}

variable "vpc_cidr" {
  default     = "10.10.0.0/16"
  description = "AWS VPC CIDR range"
}

variable "ssm_prefix" {
  default     = "/org/airgap-eks/terraform"
  description = "prefix for SSM"
}

variable "cust_name" {
     description = "Customer short name prefix"
     default = "FayBay"
   }
variable "region_role" {
   default     = "Pri"
   description = "AWS Region Role Pri or Secondary"
 }



locals {
   common_tags = {
     Project   = "AirGapcloud"
     ManagedBy = "Rossove.com TF"
   }
 }
