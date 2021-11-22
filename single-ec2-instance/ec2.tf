locals {
  instance_name = data.external.instance_name.result.name
}

resource "aws_instance" "default" {
  ami                         = "${var.ami}"
  instance_type               = "${var.instance_type}"
  associate_public_ip_address = "true"
  key_name                    = "${var.key_name}"
  vpc_security_group_ids      = [aws_security_group.default.name]
  user_data                   = file("init-script.sh")

  tags = {
        Name         = "${local.instance_name}"
        fqdnHostname = "${local.instance_name}.${var.region}.${var.domain}"
  }
  depends_on = [aws_security_group.default]
}

resource "aws_eip" "default" {
  instance = aws_instance.default.id
  vpc      = true

  tags = {
      Name = "${local.instance_name}"
  }
  depends_on = [aws_instance.default]
}