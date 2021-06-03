resource "random_uuid" "id1" {
}

output "id_1" {
    value = random_uuid.id1.result
}