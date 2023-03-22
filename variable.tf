variable "region" {
  type        = string
  default     = "eu-west-1"
  description = "The region for the AWS resources"
}

variable "project_name" {
  type        = string
  description = "project name"
  default     = "hello-world"
}

variable "vpc_id" {
  type        = string
  description = "vpc id"
  default     = "vpc-0418fe668f573a3eb"
}
variable "application_repo_name" {
  type        = string
  description = "application repo name"
  default     = "hello-world-lambda"
}

variable "image_tag" {
  type        = string
  description = "Image tag"
  default     = "dev"
}

variable "memory_size" {
  type        = string
  description = "memory size"
  default     = "2048"
}

variable "lambda_timeout" {
  type        = string
  description = "time out"
  default     = "600"
}

variable "cron" {
  type        = string
  description = "schedule expression"
  default     = ""
}

variable "branch_name" {
  type        = string
  description = "Branch name"
  default     = "dev"
}

variable "log_retention_in_days" {
  type        = number
  description = "number of log retention days"
  default     = 30
}

variable "codestar_arn" {
  type        = string
  description = "codestar arn"
  default     = "arn:aws:codestar-connections:eu-west-1:548616722440:connection/fd588b16-84b4-4bd4-871c-2fe4260ecbd5"
}


variable "environment" {
  type = map(any)
  default = {
    ENV = "prod"

  }
}

variable "iam_permissions" {
  type        = string
  default     = "\"s3:*\",\"ssm:*\", \"dynamodb:*\""
  description = "iam permissions"
}

variable "subnet_ids" {
  type        = list(string)
  default     = []
  description = "subnet ids"
}

variable "vpc_access_arn" {
  type        = string
  description = "vpc access arn"
  default     = ""
}

variable "deploy_lambda_function" {
  type        = bool
  description = "deploy lambda function"
  default     = true
}
