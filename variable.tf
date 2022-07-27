variable "region" {
  type        = string
  default     = "eu-west-1"
  description = "The region for the AWS resources"
}

variable "project_name" {
  type        = string
  description = "project name"
  default     = "update-currency"
}
