resource "local_file" "file1"{
    filename = "~/file1.txt"
    sensitive_content = "This is my first file created using terraform local provider"
    file_permission = "0700"
}