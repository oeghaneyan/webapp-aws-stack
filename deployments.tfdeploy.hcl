identity_token "aws" {
  audience = ["terraform-stacks-private-preview"]
}

deployment "staging" {
  inputs = {
    aws_region          = "us-east-1"
    role_arn            = "arn:aws:iam::407603399482:role/oe_stacks_iam_role"   # Needs to be updated with new AssumeRole information
    identity_token_file = identity_token.aws.jwt_filename
    prefix              = "staging"
    theme               = "cat"
  }
}


deployment "production" {
  inputs = {
    aws_region          = "us-west-1"
    role_arn            = "arn:aws:iam::407603399482:role/oe_stacks_iam_role"   # Needs to be updated with new AssumeRole information
    identity_token_file = identity_token.aws.jwt_filename
    prefix              = "production"
    theme               = "goat"
  }
}
