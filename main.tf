provider "aws" {
  region = var.region
}

resource "random_string" "random" {
  length  = 8
  special = false
  upper   = false
}


resource "aws_s3_bucket" "lambda_bucket" {
  bucket = "${var.project_name}-${random_string.random.id}-lambda"
}


module "codepipeline" {
  source                 = "/Users/oyindamolaaderinwale/ats-tf/pipelines-tf/"
  organization_repo_name = "Athena-Tech-Services"
  project_name           = var.project_name
  applications_details = {
    lamba = {
      application_cluster_name       = ""
      application_service_name       = ""
      application_deployment_timeout = ""

      application_name      = "update-currency"
      branchName            = "master"
      application_repo_name = "update-currency"
      application_codebuild_env_variables = [
        {
          name  = "LAMBDA_DEPLOYMENT_BUCKET_URI"
          value = "${aws_s3_bucket.lambda_bucket.id}"
          type  = "PLAINTEXT"

        },
        { name  = "LAMBDA_DEPLOYMENT_BUCKET_REGION"
          value = "${aws_s3_bucket.lambda_bucket.region}"
        type = "PLAINTEXT" },
        {
          name  = "PROJECT_NAME"
          value = "${var.project_name}"
          type  = "PLAINTEXT"
        }
      ]
      has_deploy_stage = false,
      buildspec_path   = "buildspec.yml"

    }
  }
}

