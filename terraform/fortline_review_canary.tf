# Temporary production review canary. Do not merge.
resource "aws_security_group" "operator_ssh" {
  name        = "operator-ssh"
  description = "Operator access to deployment instances"

  ingress {
    description = "SSH access"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
