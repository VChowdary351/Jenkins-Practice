resource "aws_security_group" "allow_all" {
    name = var.sg_name
    description = "allowing all ports"

    ingress  {
        description ="allowing inboud traffic"
        from_port = 0
        to_port = 0
        protocol = "tcp"
        cidr_blocks = var.sg_cidr
    }

    egress {
        description = "allowing outbound traffic"
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = var.sg_cidr
    }
}
