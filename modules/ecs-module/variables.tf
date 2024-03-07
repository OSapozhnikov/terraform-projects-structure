################################################
# VPC
################################################
variable "vpc_id" {
  description = "VPC id to create resources in."
  type        = string
  default     = ""
}

variable "subnet_ids" {
  description = "A list of subnets ASG should be associated with"
  type        = list(string)
  default     = []
}

variable "security_group_ids" {
  description = "A list of security groups the ASG should also be added to."
  type        = list(string)
  default     = []
}
