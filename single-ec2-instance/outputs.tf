output "domain-name" {
  value = "${aws_route53_record.default.name}"
}