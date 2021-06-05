variable "private_key_file_name"{
   type = string
   default = "venu.pem"
}
resource "tls_private_key" "pvtkey" {
    algorithm = "RSA"
    rsa_bits = "4096"
}

resource "local_file" "venu_private_key" {
    filename = var.private_key_file_name
    content = "${tls_private_key.pvtkey.private_key_pem}"
}