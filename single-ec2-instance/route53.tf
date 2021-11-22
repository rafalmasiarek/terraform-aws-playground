resource "aws_route53_record" "default" {
  zone_id = "${var.dns_zone_id}"
  name    = "${local.instance_name}.${var.region}.${var.domain}"
  type    = "A"
  ttl     = "300"
  records = [aws_eip.default.public_ip]

  depends_on = [aws_eip.default]
}