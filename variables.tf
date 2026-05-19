variable "aws_region" {
  description = "The AWS region to deploy to"
  type        = string
  default     = "ap-south-2"
}

variable "instance_type" {
  description = "The EC2 instance type"
  type        = string
  default     = "t3.small"
}

variable "common_tags" {
  description = "Common tags to apply to all EC2 instances"
  type        = map(string)
  default     = {}
}

variable "instances" {
  description = "Map of EC2 instances to create. The key becomes the Name tag."
  type = map(object({
    ami = string
  }))
  default = {
    "Jenkins-Server" = {
      ami = "ami-0ace560c3cf8f8133"
    }
    "Jenkins-Server-second" = {
      ami = "ami-00875df90ecec009e"
    }
  }
}
