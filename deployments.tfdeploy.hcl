identity_token "aws" {
  audience = ["terraform-stacks-private-preview"]
}

deployment "staging" {
  variables = {
    aws_region          = "us-east-1"
    role_arn            = "arn:aws:iam::407603399482:role/oe_stacks_iam_role"   # Needs to be updated with new AssumeRole information
    identity_token_file = identity_token.aws.jwt_filename
    default_tags        = { stacks-preview-example = "webapp-aws-stack-staging" }
    prefix              = "staging"
    theme               = "cat"
  }
}


deployment "production" {
  variables = {
    aws_region          = "us-west-1"
    role_arn            = "arn:aws:iam::407603399482:role/oe_stacks_iam_role"   # Needs to be updated with new AssumeRole information
    identity_token_file = identity_token.aws.jwt_filename
    default_tags        = { stacks-preview-example = "webapp-aws-stack-production" }
    prefix              = "production"
    theme               = "dog"
  }
}
