resource "tls_cert_request" "csr" {
    key_algorithm = tls_private_key.pvtkey.algorithm
    #private_key_pem = "file(local_file.venu_private_key.filename)"
    private_key_pem = tls_private_key.pvtkey.private_key_pem

    depends_on = [
        tls_private_key.pvtkey, 
        local_file.venu_private_key
    ]
    subject {
      common_name = "venu.com"
      organization = "venu personal lerning services"
    }
}