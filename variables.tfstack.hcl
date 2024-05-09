variable "aws_region" {
  type = string
}

variable "identity_token_file" {
  type = string
}

variable "role_arn" {
  type = string
}

variable "default_tags" {
  description = "A map of default tags to apply to all AWS resources"
  type        = map(string)
  default     = {}
}

#variable "user_data" {
#  type = string
#}

variable "prefix" {
  description = "This prefix will be included in the name of most resources."
}

variable "theme" {
  description = "Using the image-as-a-service URL - loremflickr.com. Some other fun ones to try are dog, elephant, space, etc."
}