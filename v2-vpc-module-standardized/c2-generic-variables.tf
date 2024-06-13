variable "aws_region" {
  description = "AWS Region"
  type        = string
  default     = "us-east-1"
}

variable "environment" {
  description = "Enviroment Variable used as a prefix"
  type        = string
  default     = "dev"
}

variable "business_division" {
  description = "Business Devision code"
  type        = string
  default     = "SAP"
}
