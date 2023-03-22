module "lambda_docker_module" {
  source                 = "/Users/oyindamolaaderinwale/ats-tf/lambda-tf/"
  region                 = var.region
  project_name           = var.project_name
  cron                   = var.cron
  codestar_arn           = var.codestar_arn
  application_repo_name  = var.application_repo_name
  log_retention_in_days  = var.log_retention_in_days
  branch_name            = var.branch_name
  image_tag              = var.image_tag
  iam_permissions        = var.iam_permissions
  lambda_timeout         = var.lambda_timeout
  memory_size            = var.memory_size
  environment            = var.environment
  deploy_lambda_function = var.deploy_lambda_function
}
