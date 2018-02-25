resource "aws_key_pair" "rancher" {
  key_name = "${var.key_name}"
  public_key = "${file("${var.key_path}")}"
  lifecycle {
    ignore_changes = ["public_key"]
  }
}
