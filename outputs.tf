output "queue_url" {
  value = "${aws_sqs_queue_policy.default.queue_url}"
}
