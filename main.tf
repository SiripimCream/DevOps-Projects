provider "aws" {
  region = "us-east-1"
}

# This creates a repository in AWS to hold your Docker image
resource "aws_ecr_repository" "repo" {
  name = "my-devops-repo"
}

output "ecr_url" {
  value = aws_ecr_repository.repo.repository_url
}
