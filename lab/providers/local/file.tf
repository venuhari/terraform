resource "local_file" "file1"{
    filename = "~/file1.txt"
    content = "This is my first file created using terraform local provider"
}