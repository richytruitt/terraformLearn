variable "aws_region" {
  type        = string
  description = "AWS region for deployment"
  default     = "us-east-1"
}

variable "AWS_ACCESS_KEY_ID" {
  type        = string
  description = "The AWS access key."
}
variable "AWS_SECRET_ACCESS_KEY" {
  type        = string
  description = "The AWS secret access key."
}
