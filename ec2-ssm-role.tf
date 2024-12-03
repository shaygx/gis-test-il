# Create an IAM role for SSM
resource "aws_iam_role" "ssm_role" {
  name               = var.role_name
  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Allow"
        Principal = {
          Service = var.assume_role_principal
        }
        Action = "sts:AssumeRole"
      }
    ]
  })
 max_session_duration = var.max_session_duration
}



# Attach the AmazonSSMManagedInstanceCore policy to the role
resource "aws_iam_role_policy_attachment" "ssm_managed_policy_attachment" {
  role       = aws_iam_role.ssm_role.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore"
}

# Create an instance profile for the SSM role (if needed for EC2)
 resource "aws_iam_instance_profile" "ssm_instance_profile" {
   name = var.instance_profile_name
   role = aws_iam_role.ssm_role.name 

 }

# Output the role's ARN
output "ssm_role_arn" {
  value       = aws_iam_role.ssm_role.arn
  description = "The ARN of the SSM IAM role"
}




