variable "ami_id" {
    type = string
    default = "ami-041e2ea9402c46c32"
}

variable "instance_type" {
    type = string
    default = "t2.micro"
}

variable "sg_name" {
    type = string
    default = "allow_all"
  
}

variable "sg_cidr" {
    type = list
    default = ["0.0.0.0/0"]
}

variable "tags" {
    type = map
    default = {
        name = "Jenkins"
        Environment = "Dev"
        component = "Kubernetes"
        Project = "Roboshop"
        Terraform = "true"

    }
  
}