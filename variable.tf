variable "name" {
  type        = string
  default     = "test"
  description = "The name of the namespace"
}

variable number_of_pods {
  default = 36
  type = number 
  description = "The number of pods to create"
}

