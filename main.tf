data "aws_iam_policy_document" "default" {
  statement {
    actions = ["${var.actions}"]
    effect  = "Allow"

    principals {
      identifiers = ["${var.principals}"]
      type        = "AWS"
    }

    condition {
      test     = "ArnLike"
      variable = "aws:SourceArn"
      values   = ["${var.condition_values}"]
    }

    resources = ["${var.resources}"]
  }
}

resource "aws_sqs_queue_policy" "default" {
  queue_url = "${var.queue_url}"

  policy = "${data.aws_iam_policy_document.default.json}"
}
