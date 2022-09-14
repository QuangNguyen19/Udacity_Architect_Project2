# TODO: Define the variable for aws_region
variable "aws_region" {
  default = "us-east-1"
}

variable "aws_profile" {
  default = "default"
}

variable "lambda_function_name" {
  default = "greet_lambda"
}
variable "function_output_path" {
  default = "lambda_function.zip"
}