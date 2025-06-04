################################################
# Project
################################################
variable "project_name" {
  description = "Project name"
  type        = string

  validation {
    condition     = length(var.project_name) >= 3 && var.project_name != null && var.project_name != ""
    error_message = "Error: Incorrect project name."
  }
}

variable "environment_name" {
  description = "Environment name for deployment"
  type        = string
  default     = "dev"

  validation {
    condition     = can(regex("^[[:alnum:]]*", var.environment_name))
    error_message = "Error: Incorrect environment name. Name should be in format $name*."
  }
}