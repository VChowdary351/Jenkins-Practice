resource "aws_instance" "Terraform" {
    ami = var.ami_id
    instance_type = var.instance_type
    security_groups = [aws_security_group.allow-all.name]

    tags = var.tags
}