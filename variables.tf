variable "actions" {
  default = ["sqs:SendMessage"]
}

variable "condition_test" {
  default = "ArnLike"
}

variable "condition_variable" {
  default = "aws:SourceArn"
}

variable "condition_values" {
  type = "list"
}

variable "principals" {
  default = ["*"]
}

variable "queue_url" {}

variable "resources" {
  type = "list"
}
