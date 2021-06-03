resource "tls_private_key" "pvtkey" {
    algorithm = "RSA"
    rsa_bits = "4096"
}

resource "local_file" "venu-private-key" {
    filename = "venu.pem"
    content = "${tls_private_key.pvtkey.private_key_pem}"
}