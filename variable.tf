variable "AWS_REGION" {
  default = "us-west-2"
}

variable "AMIS" {
  type = map(string)
  default = {
    us-east-1 = "ami-13be557e"
    us-west-2 = "ami-06b94666"
    eu-west-1 = "ami-844e0bf7"
  }
}

variable "tag" {
  description = "List of the tags for AWS resources"
  type        = map
  default     = {
    "Environment" = "aws-terraform-exercises"
    
  }
}

variable "allow" {
  type = list(object({
    port        = number
    protocol    = string
    cidr_blocks = list(string)
  }))
  default = [
    {
      port        = 80
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    },
    {
      port        = 22
      protocol    = "tcp"
      cidr_blocks = ["10.20.30.40/32"]
    },
    {
      port        = 3689
      protocol    = "tcp"
      cidr_blocks = ["1.2.3.4/32"]
    }
  ]
}
